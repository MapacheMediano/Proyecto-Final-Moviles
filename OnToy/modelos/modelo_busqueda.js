import pool from '../config/config_bd.js';

export const obtenerNodosFiltrados = async (req, res) => {
    try {
        const {
            nombreNodo = ''
        } = req.query;
        const query = `
            SELECT 
                n.id,
                n.nombre AS nodo_nombre,
                n.coordenadaX,
                n.coordenadaY,
                n.coordenadaZ
            FROM 
                nodos n
            WHERE
                (n.nombre LIKE '${nombreNodo}%')
        `;
        const [resultados] = await pool.query(query);
        return resultados;
    } catch (error) {
        console.error('Error al obtener nodos filtrados:', error);
        res.status(500).json({
            success: false,
            message: 'Error al obtener los nodos filtrados.'
        });
    }
};

export const obtenerHorarioClasesNodo = async (req, res) => {
    try {
        const {
            idNodo
        } = req.query;
        const query = `
            SELECT 
                n.nombre AS salon, 
                c.nombre AS clase, 
                c.profesor, 
                h.dia, 
                h.hora_inicio, 
                h.hora_fin 
            FROM 
                horarios h 
                INNER JOIN nodos n ON h.id_nodo = n.id 
                INNER JOIN clases c ON h.id_clase = c.id
            WHERE 
                h.id_nodo = ${idNodo} 
            ORDER BY 
                dia , hora_inicio
        `;
        const [resultados] = await pool.query(query);
        return resultados;
    } catch (error) {
        console.error('Error al obtener horarios de clases del nodo:', error);
        res.status(500).json({
            success: false,
            message: 'Error al obtener los horarios de clases del nodo.'
        });
    }
}
