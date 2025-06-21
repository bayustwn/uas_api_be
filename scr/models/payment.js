const { DataTypes } = require('sequelize');
const sequelize = require('../config/sequelize');

const Payment = sequelize.define('payment', {
  id_payment: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  id_order: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  total: {
    type: DataTypes.DECIMAL(10,2),
    allowNull: false,
  },
  metode: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
  customer: {
    type: DataTypes.STRING(255),
    allowNull: false,
  },
  status: {
    type: DataTypes.ENUM('pending', 'paid', 'failed'),
    defaultValue: 'pending',
  },
  created_at: {
    type: DataTypes.DATE,
    allowNull: false,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'payment',
  timestamps: false,
});

module.exports = Payment; 