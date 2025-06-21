const jwt = require('jsonwebtoken');

const JWT_SECRET = process.env.JWT_SECRET || 'your-secret-key';

const authMiddleware = {
    verifyToken: (req, res, next) => {
        const token = req.headers.authorization?.split(' ')[1];
        if (!token) {
            return res.status(401).json({ message: 'No token provided' });
        }
        try {
            const decoded = jwt.verify(token, JWT_SECRET);
            req.user = decoded;
            next();
        } catch (error) {
            return res.status(401).json({ message: 'Invalid token' });
        }
    },
    isAdmin: (req, res, next) => {
        if (req.user.role !== 'admin') {
            return res.status(403).json({ message: 'Access denied. Admin only.' });
        }
        next();
    },
    isPelanggan: (req, res, next) => {
        if (req.user.role !== 'pelanggan' && req.user.role !== 'admin') {
            return res.status(403).json({ message: 'Access denied. Pelanggan only.' });
        }
        next();
    }
};

module.exports = authMiddleware; 