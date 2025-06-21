const { DataTypes } = require('sequelize');
const sequelize = require('../config/sequelize');

const Order = sequelize.define('order', {
  id_order: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  id_user: DataTypes.INTEGER,
  status: {
    type: DataTypes.ENUM('pending', 'diproses', 'selesai', 'dibatalkan'),
    defaultValue: 'pending',
  },
  total: {
    type: DataTypes.DECIMAL(10,0),
    allowNull: false,
  },
  created_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: DataTypes.NOW,
  },
  updated_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'order',
  timestamps: false,
});

module.exports = Order; 