const { Sequelize } = require('sequelize');
require('dotenv').config();

const sequelize = new Sequelize('restoran', 'root', '1234', {
  host: 'localhost',
  dialect: 'mysql',
  logging: false
});

module.exports = sequelize; 