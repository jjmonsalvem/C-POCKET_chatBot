const db = require('../db');
const axios = require('axios');

exports.getMessages = (req, res) => {
  db.query('SELECT * FROM messages ORDER BY created_at ASC', (err, results) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(results);
  });
};

exports.postMessage = async (req, res) => {
  const userMessage = req.body.input;

  // Insertar mensaje del usuario
  db.query('INSERT INTO messages (content, sender) VALUES (?, ?)', [userMessage, 'user']);

  try {
    const response = await axios.post('http://pocki-api-env-1.eba-pprtwpab.us-east-1.elasticbeanstalk.com/api/getOpenaiResponse', {
      input: userMessage
    });

    const botReply = response.data.choices[0].message.content;

    // Insertar mensaje del bot
    db.query('INSERT INTO messages (content, sender) VALUES (?, ?)', [botReply, 'bot']);

    res.json({ reply: botReply });
  } catch (error) {
    res.status(500).json({ error: 'Error al contactar con la IA' });
  }
};
