const { DataTypes } = require('sequelize');
const sequelize = require('../config/sequelize');

const Menu = sequelize.define('menu', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
    field: 'id_menu'
  },
  nama: {
    type: DataTypes.STRING(100),
    allowNull: false
  },
  harga: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  gambar: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  jumlah: {
    type: DataTypes.INTEGER,
    allowNull: false,
    defaultValue: 0
  },
  id_kategori: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  id_user: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: 'user',
      key: 'id_user'
    }
  }
}, {
  tableName: 'menu',
  timestamps: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at'
});

module.exports = Menu; 