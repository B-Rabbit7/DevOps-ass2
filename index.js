'use strict';

const express = require('express');
const path = require('path'); // Import the 'path' module

// Constants
const PORT = 80;  // Change to 80 to match the exposed port
const HOST = '0.0.0.0';

// App
const app = express();

// Define the directory where your static files (including index.html) are located
const staticDir = path.join(__dirname); // Change 'public' to your actual directory name

// Serve static files from the specified directory
app.use(express.static(staticDir));

app.get('/', (req, res) => {
  // Send the index.html file as the response
  res.sendFile(path.join(staticDir, 'index.html'));
});

app.listen(PORT, HOST, () => {
  console.log(`Running on http://${HOST}:${PORT}`);
});
