import { Strategy as JwtStrategy, ExtractJwt } from 'passport-jwt';
import { buscarUsuarioPorId} from '../modelos/modelo_usuario.js';


const { JWTSECRET } = process.env;

// Configuración de passport-jwt
const inicializarPassport = (passport) => {
    //Configurar la estrategia JWT
    const opts = {
        jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
        secretOrKey: JWTSECRET,
    };
    passport.use(new JwtStrategy(opts, async (jwtPayload, done) =>{
        try {
            
           //Buscar al usuario en la base de datos por su ID
           const usuario = await buscarUsuarioPorId(jwtPayload.id);
           if (usuario) {
               return done(null, usuario); //Usuario encontrado
           } else {
               return done(null, false); //No se encontró el usuario
           }
       } catch (err) {
           return done(err, false);
       }
    }));
};
export default inicializarPassport;