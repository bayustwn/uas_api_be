const { DataTypes } = require('sequelize');
const sequelize = require('../config/sequelize');

const OrderItem = sequelize.define('order_item', {
  id_order_item: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  id_order: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  id_menu: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  jumlah: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  harga_satuan: {
    type: DataTypes.DECIMAL(10,2),
    allowNull: false,
  },
  subtotal: {
    type: DataTypes.DECIMAL(10,2),
    allowNull: false,
  },
}, {
  tableName: 'order_item',
  timestamps: false,
});

module.exports = OrderItem; 