const express = require('express');
const app = express();
const port = 3000;

app.get('/', (_req, res) => {
  res.send(`
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Welcome</title>
      <style>
        body {
          margin: 0;
          font-family: sans-serif;
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100vh;
          background: #f0f0f0;
        }
        h1 {
          font-size: 2rem;
          color: #333;
        }
      </style>
    </head>
    <body>
      <H1>Sample app.js in /opt/nodejs behind an nginx web service</H1>
    </body>
    </html>
  `);
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});



