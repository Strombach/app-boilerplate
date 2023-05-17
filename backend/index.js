'use strict';
const express = require('express');

const app = express();
const port = process.env.PORT || 3000;

// Routes
app.use('/', require('./routes/indexRouter'));

// 404 handler
app.use((req, res) => {
    res.status(404).send('<h2>404: Not found</h2>');
});

app.listen(port, () => console.log(`[server]: Server running on port http://localhost:${port}`));
