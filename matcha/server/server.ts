import express from 'express';

const app = express();
const test = require("./router/test");

app.use("/api", test);

const port: number = 3001;
app.listen(port, () => console.log(`${port}`));