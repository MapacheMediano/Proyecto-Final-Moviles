import pool from '../config/config_bd.js';

export const  buscarUsuarioPorBoleta = async (boleta) => {
    const conn = await pool.getConnection();
    const query = 'SELECT * FROM usuarios WHERE usuarios.boleta = ?';
    try {
        const [rows] = await conn.query(query, [boleta]);
        return rows;
    } catch (err) {
        console.log(err);
    } finally {
        if (conn) {
            conn.release();
        }
    }
};
export const  buscarUsuarioPorId = async (id) => {
    const conn = await pool.getConnection();
    const query = 'SELECT * FROM usuarios WHERE usuarios.id = ?';
    try {
        const [rows] = await conn.query(query, [id]);
        
        return rows[0];
    } catch (err) {
        console.log(err);
    } finally {
        if (conn) {
            conn.release();
        }
    }
};

export const registrarUsuario = async (nuevoUsuario) => {
    const { nombre, appat, apmat, email, password, boleta, img } = nuevoUsuario;
    const conn = await pool.getConnection();
    const query = 'INSERT INTO usuarios (nombre, appat, apmat, email, password, boleta,img) VALUES (?,?,?,?,?,?,?)';
    try{
        const [rows] = await conn.query(query, [nombre, appat, apmat, email, password, boleta,img]);
        return rows;
    }catch (err){ 
        console.error(err);
    }finally{
        if(conn){
            conn.release();
        }
    }

};

export const editarUsuario = async (usuarioActualizado, userId) => {
    const { nombre, appat, apmat, email, password, boleta, img } = usuarioActualizado;
    const conn = await pool.getConnection();
    const query = 'UPDATE usuarios SET nombre = ?, appat = ?, apmat = ?, email = ?, password = ?, boleta = ?, img = ? WHERE usuarios.id = ?';
    try {
        const [rows] = await conn.query(query, [nombre, appat, apmat, email, password, boleta, img, userId]);
        return rows;
    } catch (err) { 
        console.error(err);
    } finally {
        if (conn) {
            conn.release();
        }
    }
};

export const eliminarUsuario = async (userId) => {
    const conn = await pool.getConnection();
    const query = 'DELETE FROM usuarios WHERE usuarios.boleta = ?';
    try {
        const [rows] = await conn.query(query, [userId]);
        return rows;
    } catch (err) {
        console.error(err);
    } finally {
        if (conn) {
            conn.release();
        }
    }
};

export const listarUsuarios = async () => {
    const conn = await pool.getConnection();
    const query = 'SELECT * FROM usuarios';
    try {
        const [rows] = await conn.query(query);
        return rows;
    } catch (err) {
        console.error(err);
    } finally {
        if (conn) {
            conn.release();
        }
    }
};