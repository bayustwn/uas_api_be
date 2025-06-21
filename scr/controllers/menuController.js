const Menu = require('../models/menu');
const Kategori = require('../models/kategori');
const User = require('../models/user');

// Define associations
Menu.belongsTo(Kategori, { foreignKey: 'id_kategori' });
Kategori.hasMany(Menu, { foreignKey: 'id_kategori' });
Menu.belongsTo(User, { foreignKey: 'id_user', targetKey: 'id_user' });
User.hasMany(Menu, { foreignKey: 'id_user', sourceKey: 'id_user' });

exports.getAllMenu = async (req, res) => {
  try {
    const menu = await Menu.findAll({
      include: [
        {
          model: Kategori,
          attributes: ['id_kategori', 'nama_kategori']
        },
        {
          model: User,
          attributes: ['id_user', 'username', 'email', 'role']
        }
      ]
    });
    res.json(menu);
  } catch (err) {
    console.error('Error in getAllMenu:', err);
    res.status(500).json({ error: 'Failed to fetch menu items' });
  }
};

exports.getMenuById = async (req, res) => {
  try {
    const menu = await Menu.findByPk(req.params.id, {
      include: [
        {
          model: Kategori,
          attributes: ['id_kategori', 'nama_kategori']
        },
        {
          model: User,
          attributes: ['id_user', 'username', 'email', 'role']
        }
      ]
    });
    if (!menu) return res.status(404).json({ error: 'Menu not found' });
    res.json(menu);
  } catch (err) {
    console.error('Error in getMenuById:', err);
    res.status(500).json({ error: 'Failed to fetch menu item' });
  }
};

exports.createMenu = async (req, res) => {
  try {
    const { nama, harga, gambar, jumlah, id_kategori, id_user } = req.body;
    
    // Validate required fields
    if (!nama || !harga || !id_kategori || !id_user) {
      return res.status(400).json({ error: 'Missing required fields' });
    }

    // Check if user exists
    const user = await User.findByPk(id_user);
    if (!user) {
      return res.status(400).json({ error: 'User not found' });
    }

    const menu = await Menu.create({
      nama,
      harga,
      gambar,
      jumlah: jumlah || 0,
      id_kategori,
      id_user
    });
    
    res.status(201).json(menu);
  } catch (err) {
    console.error('Error in createMenu:', err);
    res.status(400).json({ error: 'Failed to create menu item' });
  }
};

exports.updateMenu = async (req, res) => {
  try {
    const menu = await Menu.findByPk(req.params.id);
    if (!menu) return res.status(404).json({ error: 'Menu not found' });
    
    const { nama, harga, gambar, jumlah, id_kategori, id_user } = req.body;

    // If id_user is being updated, check if the new user exists
    if (id_user) {
      const user = await User.findByPk(id_user);
      if (!user) {
        return res.status(400).json({ error: 'User not found' });
      }
    }

    await menu.update({
      nama: nama || menu.nama,
      harga: harga || menu.harga,
      gambar: gambar || menu.gambar,
      jumlah: jumlah || menu.jumlah,
      id_kategori: id_kategori || menu.id_kategori,
      id_user: id_user || menu.id_user
    });
    
    res.json(menu);
  } catch (err) {
    console.error('Error in updateMenu:', err);
    res.status(400).json({ error: 'Failed to update menu item' });
  }
};

exports.deleteMenu = async (req, res) => {
  try {
    const menu = await Menu.findByPk(req.params.id);
    if (!menu) return res.status(404).json({ error: 'Menu not found' });
    
    await menu.destroy();
    res.json({ message: 'Menu deleted successfully' });
  } catch (err) {
    console.error('Error in deleteMenu:', err);
    res.status(500).json({ error: 'Failed to delete menu item' });
  }
}; 