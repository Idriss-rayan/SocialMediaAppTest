// Importation d'Express
const express = require('express');
const app = express();

// Middleware pour parser les corps des requêtes en JSON
app.use(express.json());

// Route POST pour /login
app.post('/login', (req, res) => {
    const { username, password } = req.body;

    // Logique d'authentification basique
    if (username === 'user1' && password === 'example') {
        return res.status(200).json({ message: 'Login successful!' });
    } else {
        return res.status(401).json({ message: 'Invalid credentials' });
    }
});

// Le serveur écoute sur le port 53589
app.listen(53244, () => {
    console.log('Server running at http://localhost:53244/');
});
