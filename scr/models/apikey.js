const { DataTypes } = require('sequelize');
const sequelize = require('../config/sequelize');

const ApiKey = sequelize.define('apikey', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  email: {
    type: DataTypes.STRING(100),
    allowNull: false
  },
  key: {
    type: DataTypes.STRING(64),
    allowNull: false,
    unique: true
  },
  active: {
    type: DataTypes.BOOLEAN,
    defaultValue: true
  }
}, {
  tableName: 'apikeys',
  timestamps: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at'
});

module.exports = ApiKey; 