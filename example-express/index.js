const express = require("express");
require('dotenv').config()


const app = express();

app.get("*", (req, res) => {
  res.json({ message: "welcome to MCP NEW CI CD" });
});

app.listen(process.env.PORT);