
import { registrarClase, registrarHorarios, obtenerClasesConHorarios } from '../modelos/modelo_schedule.js';

export const registrarHorariosClase = async (req, res) => {
    const { horarios } = req.body;


    // Validamos si los horarios están presentes
    if (!horarios || horarios.length === 0) {
        return res.status(400).json({ message: 'No se proporcionaron horarios' });
    }

    try {
        const resultado = await registrarHorarios(horarios);
        

        // Si el resultado es exitoso, lo notificamos
        if (resultado.success) {
            return res.status(201).json({ message: 'Horarios registrados con éxito' });
        }

        return res.status(500).json({ message: 'Error al registrar los horarios' });
    } catch (err) {
        console.error('Error al registrar los horarios:', err);
        return res.status(500).json({ message: 'Error del servidor al registrar los horarios' });
    }
};

// Registrar una nueva clase
export const crearClase = async (req, res) => {
    const { nombre, profesor, horarios } = req.body;

    try {
        // Registrar la clase
        const resultadoClase = await registrarClase({ nombre, profesor });
        if (!resultadoClase) {
            return res.status(500).json({ message: 'Error al registrar la clase' });
        }

        const clase_id = resultadoClase.insertId;

        // Registrar los horarios si existen
        if (horarios && horarios.length > 0) {
            const horariosConClaseId = horarios.map(horario => ({
                ...horario,
                id_clase: clase_id,
            }));
            await registrarHorarios(horariosConClaseId);
        }

        return res.status(201).json({ message: 'Clase registrada con éxito', clase_id });
    } catch (err) {
        console.error(err);
        return res.status(500).json({ message: 'Error del servidor' });
    }
};

// Obtener clases con sus horarios
export const obtenerClases = async (req, res) => {
    try {
        const clases = await obtenerClasesConHorarios();
        return res.status(200).json(clases);
    } catch (err) {
        console.error(err);
        return res.status(500).json({ message: 'Error al obtener las clases' });
    }
};