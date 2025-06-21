const { DataTypes } = require('sequelize');
const sequelize = require('../config/sequelize');
const Order = require('./order');

const User = sequelize.define('user', {
  id_user: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  username: {
    type: DataTypes.STRING(50),
    allowNull: false,
    unique: true,
  },
  password: {
    type: DataTypes.STRING(255),
    allowNull: false,
  },
  email: DataTypes.STRING(100),
  role: {
    type: DataTypes.ENUM('admin', 'pelanggan'),
    defaultValue: 'pelanggan',
  },
  token: {
    type: DataTypes.TEXT,
    allowNull: true,
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
  tableName: 'user',
  timestamps: false,
});

User.hasMany(Order, { foreignKey: 'id_user' });
Order.belongsTo(User, { foreignKey: 'id_user' });

module.exports = User; 