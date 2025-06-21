const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const User = require('../models/user');

const JWT_SECRET = process.env.JWT_SECRET || 'your-secret-key';

const authController = {
    // Register new user
    register: async (req, res) => {
        try {
            const { username, password, email, role } = req.body;
            const existingUser = await User.findOne({ where: { username } });
            if (existingUser) {
                return res.status(400).json({ message: 'Username already exists' });
            }
            const hashedPassword = await bcrypt.hash(password, 10);
            const token = jwt.sign(
                { username, role: role || 'pelanggan' },
                JWT_SECRET,
                { expiresIn: '24h' }
            );
            const user = await User.create({
                username,
                password: hashedPassword,
                email,
                role: role || 'pelanggan',
                token
            });
            res.status(201).json({
                message: 'User registered successfully',
                token,
                user: {
                    id: user.id_user,
                    username: user.username,
                    email: user.email,
                    role: user.role
                }
            });
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    },
    // Login user
    login: async (req, res) => {
        try {
            const { email, password } = req.body;
            const user = await User.findOne({ where: { email } });
            if (!user) {
                return res.status(401).json({ message: 'Invalid username or password' });
            }
            const validPassword = await bcrypt.compare(password, user.password);
            if (!validPassword) {
                return res.status(401).json({ message: 'Invalid username or password' });
            }
            const token = jwt.sign(
                { id: user.id_user, username: user.username, role: user.role },
                JWT_SECRET,
                { expiresIn: '24h' }
            );
            
            // Update user's token in database
            await user.update({ token });
            
            res.json({
                message: 'Login successful',
                token,
                user: {
                    id: user.id_user,
                    username: user.username,
                    email: user.email,
                    role: user.role
                }
            });
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    }
};

module.exports = authController; 