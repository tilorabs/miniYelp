import express from 'express';
import db from "./controller/pg_controller.js";
const app = express();
app.use(express.json());
const port = 8080 || process.env.PG_PORT;

app.get('/cities', (req, res) => {
    db.getCities()
    .then((data) => {res.json(data)})
    .catch((err) => {
        res.status(400).send({error: err.message})
    })
})

app.listen(port, () => console.log('Server listening at ' + port));