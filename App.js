const express = require("express");
const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  return res.json({ message: "Hii, Am node js inside the docker" });
});

app.listen(PORT, () => {
  console.log(`server started on port number ${PORT}`);
});
