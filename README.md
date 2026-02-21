# Bot Billing & Reminder WhatsApp

Bot WhatsApp berbasis Node.js untuk mengirimkan pengingat tagihan (billing) kepada klien secara otomatis dan mencatat respon dari klien.

## 🛠️ Prasyarat

Sebelum menjalankan bot, pastikan perangkat Anda sudah terinstall:
- **Node.js** (v16 atau lebih baru)
- **MySQL / MariaDB** (bisa menggunakan XAMPP atau Laragon)

## 🚀 Cara Instalasi

### 1. Clone Repository & Install Dependencies
```bash
git clone https://github.com/nafaethereal/botreminder.git
cd botreminder
npm install
```

### 2. Setup Database
1. Buat database baru di MySQL dengan nama `dummy_reminder` (atau sesuai keinginan).
2. Import file **`database/schema.sql`** ke database tersebut menggunakan phpMyAdmin atau SQL client lainnya.
   - File ini akan membuat tabel `pelunasan`, `client_responses`, dan `lid_mapping`.

### 3. Konfigurasi Environment
1. Copy file `.env.example` menjadi `.env`.
   ```bash
   cp .env.example .env
   ```
2. Buka file `.env` dan sesuaikan kredensial database Anda:
   ```env
   DB_HOST=localhost
   DB_USER=root
   DB_PASS=
   DB_NAME=dummy_reminder
   ```

## 🏃 Cara Menjalankan Bot

### Mode Development
```bash
npm start
```
Bot akan menampilkan QR Code di terminal. Silakan scan menggunakan aplikasi WhatsApp Anda.

### Mode Background (Rekomendasi)
Gunakan **PM2** agar bot tetap berjalan meskipun terminal ditutup:
```bash
npm run pm2:start
```

Perintah PM2 yang berguna:
- `pm2 logs botreminder` - Melihat log aktif.
- `pm2 status` - Melihat status bot.
- `pm2 restart botreminder` - Restart bot.

## 📁 Struktur Penting
- `index.js`: File utama logika bot.
- `database/`: Berisi skema SQL dan migrasi.
- `templates/`: Template pesan WhatsApp (H-7, H-3, dll).
- `utils/`: Fungsi pembantu (deteksi kategori pesan, penanggalan, dll).

## 📊 Fitur Utama
- **Auto-Reminder**: Mengirim pengingat otomatis pada H-7, H-3, H-1, dan hari H.
- **Client Matching**: Secara otomatis mengenali nama klien saat mereka membalas pesan.
- **Persistensi LID**: Mapping Linked ID WhatsApp disimpan ke database agar nama klien tidak hilang saat restart.
- **Response Categorization**: Mengelompokkan balasan klien (janji bayar, sudah bayar, pertanyaan, dll).
