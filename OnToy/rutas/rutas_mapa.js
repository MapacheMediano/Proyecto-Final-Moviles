import { busqueda, horarioClasesNodo } from '../controladores/ctrl_busqueda.js';
import { Router } from 'express';
const router = Router();

router.get('/busqueda', busqueda);
router.get('/horarioClasesNodo', horarioClasesNodo);


export default router;