// index.js
const express = require('express');
const app = express();
const userRoutes = require('./routes/userRoutes'); // Ensure this path is correct!

app.use(express.json());
app.use('/api', userRoutes); // This tells Express: any route in userRoutes gets /api prepended

app.listen(5000, () => console.log('Server running on port 5000'));