import pool from '../config/config_bd.js';

// Registrar una clase
export const registrarClase = async (nuevaClase) => {
    const { nombre, profesor } = nuevaClase;
    const conn = await pool.getConnection();
    const query = 'INSERT INTO clases (nombre, profesor) VALUES (?, ?)';
    try {
        const [rows] = await conn.query(query, [nombre, profesor]);
        return rows;
    } catch (err) {
        console.error(err);
    } finally {
        if (conn) conn.release();
    }
};

// Registrar horarios para una clase
export const registrarHorarios = async (horarios) => {
    if (!horarios || horarios.length === 0) {
        throw new Error('No se proporcionaron horarios válidos');
    }

    const conn = await pool.getConnection();
    const query = 'INSERT INTO horarios (dia, hora_inicio, hora_fin, id_clase, id_nodo) VALUES (?, ?, ?, ?, ?)';
    
    try {
        // Mapeamos los horarios para insertarlos en la base de datos
        const promises = horarios.map(({ dia, hora_inicio, hora_fin, id_clase, id_nodo }) =>
            conn.query(query, [dia, hora_inicio, hora_fin, id_clase, id_nodo])
        );

        // Esperamos a que todas las inserciones se completen
        await Promise.all(promises);
        return { success: true };  // Si todo sale bien, devolvemos el éxito
    } catch (err) {
        console.error('Error al registrar los horarios:', err);
        throw new Error('Error al registrar los horarios en la base de datos');
    } finally {
        // Aseguramos que la conexión se libere
        if (conn) conn.release();
    }
};

// Obtener clases con horarios
export const obtenerClasesConHorarios = async () => {
    const conn = await pool.getConnection();
    const query = `
        SELECT c.id AS clase_id, c.nombre, c.profesor, h.dia, h.hora_inicio, h.hora_fin, h.id_nodo
        FROM clases c
        LEFT JOIN horarios h ON c.id = h.id_clase
    `;
    try {
        const [rows] = await conn.query(query);
        return rows;
    } catch (err) {
        console.error(err);
    } finally {
        if (conn) conn.release();
    }
};