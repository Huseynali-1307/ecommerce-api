const express = require("express");
require('dotenv').config();

const categoryRoutes = require("./routes/categoryRoutes");
const authRoutes = require("./routes/authRoutes");

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

app.use((req, res, next) => {
  console.log(`[${new Date().toISOString()}] ${req.method} - ${req.url}`);
  next();
});

app.get("/", (req, res) => {
  res.send("E-commerce API is running successfully!");
});

app.use("/api/categories", categoryRoutes);
app.use("/api/auth", authRoutes);

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
