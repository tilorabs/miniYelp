import { config } from 'dotenv'; 
config();
import pkg from 'pg';
const { Pool } = pkg;

const pool = new Pool({
    user: process.env.PG_USER,
    host: process.env.PG_HOST,
    database: process.env.PG_DATABASE,
    password: process.env.PG_PASSWORD,
    port: process.env.PG_PORT,
    ssl: true,
    ssl: { rejectUnauthorized: false },
})

async function getCities() {
    return pool.query(`SELECT id, name FROM city`)
        .then((data) => {
            return data.rows;
        })
}

async function getCityById(id) {
    const data = await pool.query('SELECT id, name FROM city WHERE id=$1;', [id]);
    return (data.rows);
}

async function getTags() {
    return pool.query(`SELECT id, name FROM tag`)
        .then((data) => {
            return data.rows;
        })
}

async function getTagById(id) {
    const data = await pool.query('SELECT id, name FROM tag WHERE id=$1;', [id]);
    return (data.rows);
}

async function getRestaurants() {
    return pool.query(`SELECT id, name, picture, city_id FROM restaurant`)
        .then((data) => {
            return data.rows;
        })
}

async function getRestaurantById(id) {
    const data = await pool.query('SELECT id, name, picture, city_id FROM restaurant WHERE id=$1;', [id]);
    return (data.rows);
}

export default {
    getCities, getRestaurants, getTags, getCityById, getRestaurantById, getTagById
}