const express = require('express');
const cors = require('cors');
require('dotenv').config();
const { v4: uuidv4 } = require('uuid');

const sequelize = require('./scr/config/sequelize');

const menuRoutes = require('./scr/routes/menu');
const orderRoutes = require('./scr/routes/orders');
const userRoutes = require('./scr/routes/users');
const kategoriRoutes = require('./scr/routes/kategori');
const paymentRoutes = require('./scr/routes/payment');
const authRoutes = require('./scr/routes/auth');
const apikeyRoutes = require('./scr/routes/apikey');

const app = express();

// Middleware
app.use(cors({
  origin: [
    "https://uas-api-web2.vercel.app",
    "https://uas-api-web1.vercel.app"
  ]
}));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Request logging middleware
app.use((req, res, next) => {
  console.log(`${new Date().toISOString()} - ${req.method} ${req.url}`);
  next();
});

// Routes
app.use('/api/auth', authRoutes);
app.use('/api/users', userRoutes);
app.use('/api/menu', menuRoutes);
app.use('/api/orders', orderRoutes);
app.use('/api/kategori', kategoriRoutes);
app.use('/api/payment', paymentRoutes);
app.use('/api', apikeyRoutes);

// Test route
app.get('/test', (req, res) => {
  res.json({ message: 'Server is running!' });
});

// DB Keep-Alive Ping
const keepDBAlive = async () => {
  try {
    await sequelize.query('SELECT 1');
    console.log(`[${new Date().toISOString()}] Keep-alive ping to DB successful.`);
  } catch (error) {
    console.error(`[${new Date().toISOString()}] DB keep-alive ping failed:`, error.message);
  }
};

// Start server + ping interval
const PORT = process.env.PORT || 3000;

async function startServer() {
  try {
    await sequelize.authenticate();
    console.log('Database connection has been established successfully.');
    
    await sequelize.sync();
    console.log('All models were synchronized successfully.');

    // Start server
    app.listen(PORT, () => {
      console.log(`Server is running on port ${PORT}`);
    });

    // Start keep-alive ping every 2 minutes
    setInterval(keepDBAlive, 1000 * 60 * 2); // 2 minutes

  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
}

startServer();
