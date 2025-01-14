import jwt from 'jsonwebtoken';
import bcrypt from 'bcrypt';
import { buscarUsuarioPorBoleta, registrarUsuario } from '../modelos/modelo_usuario.js';

export const login = async (req, res) => {
    console.log('Usuario usando api...');
    const { boleta, password } = req.body;
    try {
        const usuario = await buscarUsuarioPorBoleta(boleta);
        if (!usuario[0]) {
            return res.status(401).json({ message: 'Usuario no encontrado' });
        }
        
        //Verificar contraseña
        const coincidencia = await bcrypt.compare(password, usuario[0].password);
        if (!coincidencia) {
            return res.status(401).json({ message: 'Contraseña incorrecta' });
        }

        //Generar el token JWT
        const token = jwt.sign({ id: usuario[0].id }, process.env.JWTSECRET, {
            expiresIn: '1h',
        });
        //Enviar el token
        return res.json(
            {   message: 'Autenticación exitosa',
                id: usuario[0].id, 
                boleta: usuario[0].boleta, 
                token });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Error del servidor' });
    }
};

export const signup = async (req, res) => {
    const { nombre, appat, apmat, email, password, boleta,img } = req.body.registro;
    try {
        const usuarioExistente = await buscarUsuarioPorBoleta(boleta);
        if (usuarioExistente.length > 0) {
            return res.status(400).json({ message: 'La boleta ya está registrada' });
        }
        const hashedPassword = await bcrypt.hash(password, 10);
        const nuevoUsuario = {
            nombre,
            appat,
            apmat,
            email,
            password: hashedPassword,
            boleta,
            img,
        };
        const resultadoRegistro = await registrarUsuario(nuevoUsuario);
        
        if (!resultadoRegistro || resultadoRegistro.affectedRows === 0) { 
            return res.status(500).json({ message: 'Error al registrar el usuario' });
        }
        const token = jwt.sign({ id: nuevoUsuario.boleta }, process.env.JWTSECRET, {
            expiresIn: '1h',
        });

        return res.status(201).json({ message: 'Registro exitoso', token });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: 'Error del servidor' });
    }
};
export const verifyTokenMiddleware  = (req, res, next) => {
    const jwtToken = process.env.JWTSECRET;
    const token = req.headers['authorization']?.split(' ')[1]; // Formato "Bearer token"
    
    if (!token) return res.status(401).json({ message: 'Token requerido' });

    jwt.verify(token, jwtToken, (err, user) => {
        if (err) return res.status(403).json({ message: 'Token inválido' });
        next();
    });
};
export const verificarToken = (req, res) => {
    const JWT = process.env.JWTSECRET;
    const { token } = req.body;
    if (!token) {
        return res.status(401).json({ message: 'Token no proporcionado' });
    }
    try {
        jwt.verify(token, JWT);
        return res.status(200).json({ message: 'Token válido' });
    } catch (error) {
        return res.status(401).json({ message: 'Token inválido o expirado' });
    }
};

