const express = require('express');
const db = require('./db');

const app = express();
const PORT = 3000;

app.use(express.json());

// Test route
app.get('/', (req, res) => {
    res.send('E-commerce API is running...');
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});