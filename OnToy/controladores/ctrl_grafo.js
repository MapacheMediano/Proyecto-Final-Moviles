/* eslint-disable camelcase */
import { obtenerNodos } from '../modelos/modelo_nodos.js';
import { obtenerAristas } from '../modelos/modelo_aristas.js';
import Heap from 'heap';

function inicializarDistancias(grafo, inicio) {
    const distancias = {};
    const previos = {};

    for (const nodo in grafo) {
        distancias[nodo] = Infinity;
        previos[nodo] = null;
    }
    
    distancias[inicio] = 0;
    return { distancias, previos };
}

function dijkstra(grafo, inicio, objetivo) {
    const { distancias, previos } = inicializarDistancias(grafo, inicio);
    const visitados = new Set();
    const cola = new Heap((a, b) => a.distancia - b.distancia);

    // Insertamos el nodo inicial con su distancia
    cola.push({ nodo: inicio, distancia: 0 });

    while (cola.size() > 0) {
        const { nodo: actual, distancia } = cola.pop();

        if (visitados.has(actual)) continue;

        visitados.add(actual);

        if (actual === objetivo) break;

        if (grafo[actual]) {
            grafo[actual].vecinos.forEach(({ destino, peso }) => {
                if (visitados.has(destino)) return;

                const nuevaDistancia = distancias[actual] + peso;

                if (nuevaDistancia < distancias[destino]) {
                    distancias[destino] = nuevaDistancia;
                    previos[destino] = actual;
                    cola.push({ nodo: destino, distancia: nuevaDistancia });
                }
            });
        }
    }

    const ruta = [];
    let nodo = objetivo;
    while (nodo !== null) {
        ruta.unshift(nodo); 
        nodo = previos[nodo]; 
    }

    if (distancias[objetivo] === Infinity) {
        return { ruta: [], distanciaTotal: Infinity };
    }

    return { ruta, distanciaTotal: distancias[objetivo] };
}

export const cargarGrafo = async () => {
    const { nodos } = await obtenerNodos(); 
    const { aristas } = await obtenerAristas();
    const grafo = {};

    // Asegurarse de que cada nodo tenga sus coordenadas y una lista de vecinos
    nodos.forEach(nodo => {
        grafo[nodo.id] = { 
            coordenadas: {
                x: nodo.coordenadaX,
                y: nodo.coordenadaY,
                z: nodo.coordenadaZ
            }, 
            vecinos: []  
        };
    });

    // Cargar las aristas del grafo
    aristas.forEach(arista => {
        const { id_nodo_origen, id_nodo_destino, peso } = arista;

        grafo[id_nodo_origen] = grafo[id_nodo_origen] || { vecinos: [] };
        grafo[id_nodo_destino] = grafo[id_nodo_destino] || { vecinos: [] };

        grafo[id_nodo_origen].vecinos.push({ destino: id_nodo_destino, peso });
        grafo[id_nodo_destino].vecinos.push({ destino: id_nodo_origen, peso });
    });

    return grafo;
};

export const cargarRuta = async (req, res) => {
    const grafo = await cargarGrafo();

    const { nodoOrigen, nodoDestino } = req.query;  // Obtener los nodos origen y destino
   
    const resultado = dijkstra(grafo, nodoOrigen, nodoDestino);

    // Construir la ruta con las coordenadas y los nodos origen/destino por cada arista
    const rutaConCoordenadas = resultado.ruta.map((nodoId, index) => {
        const nodo = grafo[nodoId];
        const siguienteNodoId = resultado.ruta[index + 1];

        if (siguienteNodoId) {
            const siguienteNodo = grafo[siguienteNodoId];
            return {
                origen: {
                    x: nodo.coordenadas.x,
                    y: nodo.coordenadas.y,
                    z: nodo.coordenadas.z
                },
                destino: {
                    x: siguienteNodo.coordenadas.x,
                    y: siguienteNodo.coordenadas.y,
                    z: siguienteNodo.coordenadas.z
                }
            };
        }

        return null; // Si no hay siguiente nodo, no devolvemos nada
    }).filter(arista => arista !== null);  // Filtramos los elementos nulos

/*     console.log('Ruta más corta:', rutaConCoordenadas);
    console.log('Distancia total:', resultado.distanciaTotal); */

    // Retornar la ruta con las coordenadas de origen y destino
    return res.json({ ruta: rutaConCoordenadas, distanciaTotal: resultado.distanciaTotal });
};
