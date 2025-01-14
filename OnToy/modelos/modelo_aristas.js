import pool from '../config/config_bd.js';

export const obtenerAristasJSON = async (req, res) => {
    const query =  `SELECT 
                        a.tipo, 
                        a.peso, 
                        a.id_nodo_origen, 
                        n1.coordenadaX AS nodo_origen_x, 
                        n1.coordenadaY AS nodo_origen_y, 
                        n1.coordenadaZ AS nodo_origen_z,
                        a.id_nodo_destino, 
                        n2.coordenadaX AS nodo_destino_x, 
                        n2.coordenadaY AS nodo_destino_y, 
                        n2.coordenadaZ AS nodo_destino_z
                    FROM 
                        aristas a
                    JOIN 
                        nodos n1 ON a.id_nodo_origen = n1.id
                    JOIN 
                        nodos n2 ON a.id_nodo_destino = n2.id;
                    `;
    const [ resultados ] = await pool.query(query);
    const aristas = resultados.map((fila) => ({
        tipo: fila.tipo,
        peso: fila.peso,
        nodoOrigen: {
          coordenadaX: fila.nodo_origen_x,
          coordenadaY: fila.nodo_origen_y,  
          coordenadaZ: fila.nodo_origen_z
        },
        nodoDestino: {
          coordenadaX: fila.nodo_destino_x,
          coordenadaY: fila.nodo_destino_y,
          coordenadaZ: fila.nodo_destino_z
        }
      }));
    return res.json({ aristas });
};
export const obtenerAristas= async (req, res) => {
    const query =  `SELECT 
                        a.tipo, 
                        a.peso, 
                        a.id_nodo_origen, 
                        n1.coordenadaX AS nodo_origen_x, 
                        n1.coordenadaY AS nodo_origen_y, 
                        n1.coordenadaZ AS nodo_origen_z,
                        a.id_nodo_destino, 
                        n2.coordenadaX AS nodo_destino_x, 
                        n2.coordenadaY AS nodo_destino_y, 
                        n2.coordenadaZ AS nodo_destino_z
                    FROM 
                        aristas a
                    JOIN 
                        nodos n1 ON a.id_nodo_origen = n1.id
                    JOIN 
                        nodos n2 ON a.id_nodo_destino = n2.id;
                    `;
    const [ aristas ] = await pool.query(query);
    return { aristas };
};

