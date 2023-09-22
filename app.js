const express = require('express');
const date = require('date-format');
const app = express();
const port = process.env.PORT || 8080;

app.use(express.json());

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

app.post('/date', (req, res) => {
  res.send({'Date: ' : (date(req.body.format, new Date))});
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});