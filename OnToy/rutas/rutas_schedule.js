import { Router } from 'express';

// Importación de controladores
import { crearClase, obtenerClases, registrarHorariosClase } from '../controladores/ctrl_schedule.js';

const router = Router();

// Mapeo de rutas
router.post('/clases', crearClase); // Registrar una nueva clase con horarios
router.get('/clases', obtenerClases); // Obtener todas las clases con horarios
router.post('/horarios', registrarHorariosClase);

export default router;