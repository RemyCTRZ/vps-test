import express from "express";

const app = express()

app.get('/hello', (req, res) => res.send('Hello Rémy 1'));

app.listen(3010, ()=> console.log("Application démarrée sur le port 3010"));