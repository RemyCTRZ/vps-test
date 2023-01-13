import express from "express";
require("dotenv")

const app = express()

app.get('/hello', (req, res) => res.send('Hello Rémy 1'));
app.get('/docker', (req, res) => res.send("J'aime " + process.env.test));

app.listen(3010, () => console.log("Application démarrée sur le port 3010"));