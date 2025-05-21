import express from "express";
import { authCheck, login, logout, signup } from "../controllers/auth.controller.js";
import { protectRoute } from "../middleware/protectRoute.js";

const router = express.Router();

router.post('/signin', (req, res, next) => {
  console.log('POST /api/v1/auth/signin');
  console.log('Body:', req.body);
  next();
}, login);

router.post('/signup', (req, res, next) => {
  console.log('POST /api/v1/auth/signup');
  console.log('Body:', req.body);
  next();
}, signup);

router.post("/logout", logout);

router.get("/authCheck", protectRoute, authCheck);

export default router;
