import pool from '../config/config_bd.js';

export const obtenerNodosJSON = async (req, res) => {
    const query = 'SELECT * FROM nodos';
    const [nodos] = await pool.query(query);
    return res.json({ nodos });
};
export const obtenerNodos = async (req, res) => {
    const query = 'SELECT * FROM nodos';
    const [nodos] = await pool.query(query);
    return { nodos };
};
export const buscarNodos = async (req, res) => {
    const { busqueda } = req.query; // Assuming 'busqueda' is the query parameter for search
    const query = `
        SELECT * FROM nodos
        WHERE LOWER(nombre) LIKE LOWER('%${busqueda}%')
        OR LOWER(descripcion) LIKE LOWER('%${busqueda}%')
    `;
    const [nodos] = await pool.query(query);
    return res.json({ nodos });
};