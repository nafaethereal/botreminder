-- =====================================================
-- Insert dummy data untuk testing
-- Database: dummy_reminder
-- Table: pelunasan
-- =====================================================

USE dummy_reminder;

INSERT INTO pelunasan (nama_website, nomor_telepon, paket, harga_renewal, tahun_ke, status, is_completed, due_date) VALUES
-- H-7 (due: 4 Maret 2026)
('okosukses.com', '6287862070932', 'profesional', 1500000, 1, 'menunggu_pembayaran', 0, '2026-03-04'),
('asadesain.id', '6289648211444', 'hemat', 750000, 2, 'menunggu_pembayaran', 0, '2026-03-04'),
-- H-3 (due: 28 Februari 2026)
('kulinerhits.co', '6285842903319', 'bisnis', 1200000, 1, 'menunggu_pembayaran', 0, '2026-02-28'),
-- H-1 (due: 26 Februari 2026)
('travelceria.net', '6285701950701', 'expert', 2000000, 3, 'menunggu_pembayaran', 0, '2026-02-26'),
-- H0 (due: 25 Februari 2026 - hari ini)
('pelanjamurah.store', '6289603166370', 'hemat', 500000, 1, 'menunggu_pembayaran', 0, '2026-02-25'),
('selomarket.id', '6285228805366', 'bisnis', 900000, 1, 'menunggu_pembayaran', 0, '2026-02-25'),
-- H+3 (due: 22 Februari 2026 - 3 hari lalu)
('tokobungamurah.co', '6282329500124', 'profesional', 1500000, 1, 'menunggu_pembayaran', 0, '2026-02-22');

SELECT 'Dummy data inserted successfully!' AS Status;
SELECT COUNT(*) AS total_records FROM pelunasan;
