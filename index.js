const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
require('dotenv').config();

const app = express();
app.use(cors());
app.use(express.json());

// Database connection
const db = mysql.createConnection({
    host: '127.0.0.1', // Change from 'localhost' to '127.0.0.1'
    user: 'root',
    password: 'mysql', // Ensure this is your actual password
    database: 'roxiler_db'
});

db.connect((err) => {
    if (err) throw err;
    console.log('Connected to MySQL database!');
});

// Basic route to test
app.get('/', (req, res) => {
    res.send('Roxiler Server is running');
});

app.listen(5000, () => {
    console.log('Server running on port 5000');
});