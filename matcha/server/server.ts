import express from 'express';
import {AppDataSource} from "./data-source";
// import dotenv from 'dotenv';

// dotenv.config();

const app = express();
const test = require("./router/test");

app.use("/api", test);

const port: number = 3001;
// app.listen(port, () => console.log(`${port}`));
app.listen(port, async() => {
    console.log(`matcha start : ${port}`);
    AppDataSource.initialize().then(() => {
        console.log('Database Initialized')
    }).catch(error => console.log(error));
})
