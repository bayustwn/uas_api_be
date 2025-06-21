const { DataTypes } = require('sequelize');
const sequelize = require('../config/sequelize');

const Kategori = sequelize.define('kategori', {
  id_kategori: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  nama_kategori: {
    type: DataTypes.STRING(50),
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
  tableName: 'kategori',
  timestamps: false,
});

module.exports = Kategori; 