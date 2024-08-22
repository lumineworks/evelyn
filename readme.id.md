Berikut adalah terjemahan teks tersebut ke dalam bahasa Indonesia:

---

## Lutfika Evelyn

## Tentang

**Lutfika Evelyn** adalah image untuk backup database menggunakan Restic dan Rclone.
## Image

1. PostgreSQL: `lutfika/evelyn:ubuntu24-pgsql-rclone`

## Sebelum Anda Memulai

1. Anda harus menginstal Rclone dan Restic di mesin Anda untuk membuat konfigurasi dan repository untuk backup Anda. Anda tidak bisa mengkonfigurasinya sebelum menjalankan alat-alat ini.
2. Jalankan `rclone config` untuk mengatur drive tempat Anda ingin menyimpan backup.
3. Setelah itu, Rclone akan menghasilkan otentikasi yang diperlukan untuk mengakses drive tersebut. Gunakan `rclone config file` untuk menemukannya.
4. Buat repository dengan mengetik `restic init -r rclone:<nama_drive>:[direktori]`.
5. Bagian setelah `-r ...` adalah `RESTIC_REPOSITORY` Anda, dan kata sandi yang Anda masukkan akan menjadi `RESTIC_PASSWORD` Anda.
6. Catatan: Bagian `[direktori]` bersifat opsional tetapi diperlukan jika Anda menggunakan S3 atau ingin membuat folder khusus.

## Konfigurasikan!

1. Pergi ke [/example/postgres/rcfg](/example/postgres/rcfg) dan salin file-file tersebut ke lokasi di mana Anda ingin mengatur server job backup.
2. Konfigurasikan file `.env.example` dan ubah namanya menjadi `.env`.
3. Salin file konfigurasi Rclone terbaru ke file `rclone.conf` yang disediakan dalam contoh. File konfigurasi ini dibuat pada bagian "Sebelum Anda Memulai" (harap baca dengan seksama).
4. CATATAN: Pastikan `RESTIC_REPOSITORY` sesuai dengan konfigurasi yang Anda buat.

