import { Router } from 'express';

// Importación de controladores
import { login, signup, verificarToken } from '../controladores/ctrl_auth.js';

const router = Router();

// Mapeo de rutas
router.post('/login', login);
router.post('/signup', signup);
router.post('/verificarToken', verificarToken);
export default router;