const Payment = require('../models/payment');

exports.getAllPayments = async (req, res) => {
  try {
    const payments = await Payment.findAll();
    res.json(payments);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.getPaymentById = async (req, res) => {
  try {
    const payment = await Payment.findByPk(req.params.id);
    if (!payment) return res.status(404).json({ error: 'Payment not found' });
    res.json(payment);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.createPayment = async (req, res) => {
  try {
    const { id_order, total, metode, customer } = req.body;

    // Validation: check required fields
    if (!id_order || !total || !metode || !customer ) {
      return res.status(400).json({ error: 'All fields are required: id_order, total, metode, customer' });
    }

    const payment = await Payment.create({
      id_order,
      total,
      metode,
      customer
    });

    res.status(201).json(payment);
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
};

exports.updatePaymentStatus = async (req, res) => {
  try {
    const payment = await Payment.findByPk(req.params.id);
    if (!payment) return res.status(404).json({ error: 'Payment not found' });
    payment.status = req.body.status;
    await payment.save();
    res.json(payment);
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
}; 