// server.js
const express = require('express');
const cors = require('cors');
const methodOverride = require('method-override');
const path = require('path');

const app = express();

// ===== Core middleware =====
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Static images (dengan header CORS utk asset)
app.use(
  '/images',
  (req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Cross-Origin-Resource-Policy', 'cross-origin');
    next();
  },
  express.static(path.join(__dirname, 'public', 'images'))
);

// (opsional) serve folder upload bila ada
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

// Method Override (form _method=PUT/DELETE)
app.use(
  methodOverride((req, res) => {
    if (req.body && typeof req.body === 'object' && '_method' in req.body) {
      const method = req.body._method;
      delete req.body._method;
      return method;
    }
    if (req.originalUrl.includes('_method=PUT')) return 'PUT';
  })
);

// ===== Routes =====
const adminRoutes = require('./routes/adminRoutes');
const umkmRoutes = require('./routes/umkmRoutes');
const galeriRoutes = require('./routes/galeriRoutes');
const beritaRoutes = require('./routes/beritaRoutes');

app.use('/api/admin', adminRoutes);
app.use('/api/umkm', umkmRoutes);
app.use('/api/galeri', galeriRoutes);
app.use('/api/berita', beritaRoutes);

// ===== Health check (untuk DO) =====
// Selalu 200 OK; jika mysql2 & ENV tersedia, test DB juga.
// Tidak ada 'throw' agar tidak mematikan proses.
app.get('/api/health', async (req, res) => {
  let db = null;
  let dbError;

  try {
    // Coba pakai modul db kamu jika mendukung pool
    let pool;
    try {
      const dbMod = require('./config/db');
      if (dbMod?.getPool) {
        pool = dbMod.getPool();
      }
    } catch (_) {
      // abaikan error require; kita coba direct connect di bawah
    }

    if (pool) {
      const [rows] = await pool.query('SELECT 1 AS ok');
      db = rows?.[0]?.ok === 1;
    } else {
      // fallback: direct connect kalau mysql2/promise tersedia
      let mysql = null;
      try {
        mysql = require('mysql2/promise');
      } catch (_) {}
      if (mysql && process.env.DB_HOST) {
        const sslEnabled = String(process.env.DB_SSL || '').toLowerCase() !== 'false';
        const conn = await mysql.createConnection({
          host: process.env.DB_HOST,
          port: Number(process.env.DB_PORT || 3306),
          user: process.env.DB_USER,
          password: process.env.DB_PASS,
          database: process.env.DB_NAME,
          ssl: sslEnabled ? { rejectUnauthorized: true } : undefined,
        });
        await conn.query('SELECT 1');
        await conn.end();
        db = true;
      }
    }
  } catch (e) {
    db = false;
    dbError = e.message;
  }

  res.status(200).json({
    ok: true,
    db,
    ...(dbError ? { dbError } : {}),
    ts: new Date().toISOString(),
  });
});

// Root test
app.get('/', (req, res) => res.send('🚀 Server is up & running ⚡️'));

// 404
app.use((req, res) => res.status(404).json({ message: 'Endpoint tidak ditemukan' }));

// Global error
app.use((err, req, res, next) => {
  console.error('❌ GLOBAL ERROR:', err.stack || err.message || err);
  res.status(500).json({ message: 'Terjadi kesalahan di server' });
});

// ===== Start server =====
const PORT = Number(process.env.PORT || 3000);
const HOST = '0.0.0.0';
app.listen(PORT, HOST, () => {
  console.log(`🚀 API listening on http://${HOST}:${PORT}`);
});
