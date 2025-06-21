const Kategori = require('../models/kategori');

exports.getAllKategori = async (req, res) => {
  try {
    const kategori = await Kategori.findAll();
    res.json(kategori);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.getKategoriById = async (req, res) => {
  try {
    const kategori = await Kategori.findByPk(req.params.id);
    if (!kategori) return res.status(404).json({ error: 'Kategori not found' });
    res.json(kategori);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.createKategori = async (req, res) => {
  try {
    const kategori = await Kategori.create(req.body);
    res.status(201).json(kategori);
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
};

exports.updateKategori = async (req, res) => {
  try {
    const kategori = await Kategori.findByPk(req.params.id);
    if (!kategori) return res.status(404).json({ error: 'Kategori not found' });
    await kategori.update(req.body);
    res.json(kategori);
  } catch (err) {
    res.status(400).json({ error: err.message });
  }
};

exports.deleteKategori = async (req, res) => {
  try {
    const kategori = await Kategori.findByPk(req.params.id);
    if (!kategori) return res.status(404).json({ error: 'Kategori not found' });
    await kategori.destroy();
    res.json({ message: 'Kategori deleted' });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
}; 