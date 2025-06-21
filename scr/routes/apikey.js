const express = require('express');
const router = express.Router();
const { v4: uuidv4 } = require('uuid');
const ApiKey = require('../models/apikey');

// Register for API key
router.post('/register', async (req, res) => {
  const { email } = req.body;
  if (!email) return res.status(400).json({ error: 'Email is required' });
  // Generate a new API key
  const key = uuidv4().replace(/-/g, '');
  const apiKey = await ApiKey.create({ email, key });
  res.json({ apiKey: apiKey.key });
});

// Info endpoint (optional)
router.get('/info', (req, res) => {
  res.json({
    message: 'Welcome to the Menu API. Register to get your API key and access /api/menu with x-api-key header.'
  });
});

module.exports = router; 