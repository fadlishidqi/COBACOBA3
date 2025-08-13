// backend/config/db.js
const mysql = require('mysql2/promise');

const config = {
  host: process.env.DB_HOST || 'localhost',
  port: Number(process.env.DB_PORT || 3306),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASS || '',
  database: process.env.DB_NAME || 'test',
  // DO MySQL requires TLS; set from env
  ssl: (process.env.DB_SSL && String(process.env.DB_SSL).toLowerCase() !== 'false')
    ? { rejectUnauthorized: true }  // cukup ini untuk DO
    : undefined,
};

let pool;

/** init pool sekali */
function getPool() {
  if (!pool) {
    pool = mysql.createPool({
      ...config,
      waitForConnections: true,
      connectionLimit: 10,
      queueLimit: 0,
    });
    // (opsional) log supaya kita yakin bukan ke localhost
    console.log(
      `📦 MySQL pool created → host=${config.host} port=${config.port} db=${config.database} ssl=${!!config.ssl}`
    );
  }
  return pool;
}

/** helper query */
async function query(sql, params) {
  const [rows] = await getPool().query(sql, params);
  return rows;
}

module.exports = { getPool, query };
