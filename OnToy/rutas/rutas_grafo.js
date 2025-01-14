import { Router } from 'express';
import { cargarRuta } from '../controladores/ctrl_grafo.js';
import { obtenerNodosJSON } from '../modelos/modelo_nodos.js';
import { obtenerAristasJSON } from '../modelos/modelo_aristas.js';
import { verifyTokenMiddleware } from '../controladores/ctrl_auth.js';

const router = Router();

router.get('/api/ruta', cargarRuta);
router.get('/api/obtenerNodos', verifyTokenMiddleware, obtenerNodosJSON);
router.get('/api/obtenerAristas', verifyTokenMiddleware, obtenerAristasJSON);
router.get('/api/obtenerUsuarioAtaque', (req, res) =>{
console.log('usuario atque:' + req.query.usuarioAtaque);

});
export default router;