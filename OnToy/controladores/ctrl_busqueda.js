import { obtenerNodosFiltrados, obtenerHorarioClasesNodo } from '../modelos/modelo_busqueda.js';

export const busqueda = async (req, res) => {
    const nodosFiltrados = await obtenerNodosFiltrados(req, res);
    return res.status(200).json({
        success: true,
        data: nodosFiltrados
    }); 
};

export const horarioClasesNodo = async (req, res) => {
    const horariosClases = await obtenerHorarioClasesNodo(req, res);
    return res.status(200).json({
        success: true,
        data: horariosClases
    });
};
    