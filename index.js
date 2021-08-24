const app = require('express')();
const port = process.env.PORT || 5000;

app.get('/', (req, res) => {
  res.json({ message: 'Hello from ITECH Club!' });
});

app.listen(port, console.log(`Server is running on http://localhost:${port}`));
