const Order = require('../models/order');
const OrderItem = require('../models/order_item');
const Menu = require('../models/menu');
const User = require('../models/user');
const { where } = require('sequelize');

Order.hasMany(OrderItem, { foreignKey: 'id_order' });
OrderItem.belongsTo(Menu, { foreignKey: 'id_menu' });

exports.getAllOrders = async (req, res) => {
  try {
    const orders = await Order.findAll({
      include: [
        { model: OrderItem, include: [Menu] },
        { model: User }
      ]
    });

    res.json(orders);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.getOrderById = async (req, res) => {
  try {
    const order = await Order.findByPk(req.params.id, {
      include: [
        { model: OrderItem, include: [Menu] },
        { model: User }
      ],
    });
    if (!order) return res.status(404).json({ error: 'Order not found' });
    res.json(order);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.createOrder = async (req, res) => {
  const { id_user, items } = req.body;
  try {
    // Validasi user
    const user = await User.findByPk(id_user);
    if (!user) {
      return res.status(400).json({ error: 'User not found' });
    }

    const order = await Order.create({ id_user, total: 0 });
    let totalOrder = 0;

    if (items && Array.isArray(items)) {
      for (const item of items) {
        const subtotal = item.jumlah * item.harga_satuan;
        totalOrder += subtotal;
        await OrderItem.create({
          id_order: order.id_order,
          id_menu: item.id_menu,
          jumlah: item.jumlah,
          harga_satuan: item.harga_satuan,
          subtotal: subtotal
        });
      }
    }

    // Update order total
    await order.update({ total: totalOrder });

    const createdOrder = await Order.findByPk(order.id_order, {
      include: [{ model: OrderItem, include: [Menu] }],
    });
    res.status(201).json(createdOrder);
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
};

exports.updateOrderStatus = async (req, res) => {
  try {
    const order = await Order.findByPk(req.params.id);
    if (!order) return res.status(404).json({ error: 'Order not found' });
    order.status = req.body.status;
    await order.save();
    res.json(order);
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
};

exports.deleteOrder = async (req, res) => {
  try {
    const order = await Order.findByPk(req.params.id);
    if (!order) return res.status(404).json({ error: 'Order not found' });
    await order.destroy();
    res.json({ message: 'Order deleted' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
}; 