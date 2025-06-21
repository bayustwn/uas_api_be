const ApiKey = require('../models/apikey');

module.exports = async function (req, res, next) {
  const apiKey = req.header('x-api-key');
  if (!apiKey) {
    return res.status(401).json({ error: 'API key required' });
  }
  const keyRecord = await ApiKey.findOne({ where: { key: apiKey, active: true } });
  if (!keyRecord) {
    return res.status(403).json({ error: 'Invalid or inactive API key' });
  }
  next();
}; 