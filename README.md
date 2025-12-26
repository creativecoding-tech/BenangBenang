# BenangBenang 🧵

__BenangBenang__ adalah sebuah project seni generatif (_generative art_) interaktif yang dibangun menggunakan __Processing__.

📺 __Demo__: [Tonton di YouTube](https://youtu.be/ED6fD0AYKEM)

Project ini memvisualisasikan seratus kurva Bézier warna-warni yang "menenun" pola visual yang dinamis dan estetis di layar. Setiap kurva memiliki control point yang bergerak secara independen, menciptakan efek visual seperti benang yang saling melintasi dan membentuk pola organik yang terus berubah.

## ✨ Fitur Utama

- __100 Kurva Bézier__: Setiap kurva memiliki anchor point tetap di bagian atas dan bawah layar, dengan control point yang bergerak secara independen.
- __Efek Jejak (Trails)__: Menggunakan teknik penumpukan layer semi-transparan (alpha trail) untuk menciptakan efek jejak gerakan yang halus dan artistik.
- __Warna Prosidural__: Setiap kurva memiliki warna RGB yang dihasilkan secara acak untuk variasi visual yang kaya.
- __Toggle Play/Pause__: Kontrol interaktif untuk memulai atau memberhentikan animasi dengan klik mouse.
- __Full Screen Mode__: Visualisasi ditampilkan dalam mode layar penuh untuk pengalaman imersif.

## 🎮 Kontrol (Controls)

Anda dapat berinteraksi dengan visualisasi menggunakan input berikut:

| Input | Aksi |
| --- | --- |
| __Klik Mouse__ | Toggle jalan/stop animasi (Play/Pause) |

Animasi dimulai dalam keadaan berhenti. Klik mouse untuk memulai animasi, dan klik lagi untuk memberhentikan.

## 🚀 Cara Menjalankan

1. Pastikan Anda sudah menginstal Processing IDE.
2. Clone atau download repositori ini.
3. Buka file `BenangBenang.pde`.
4. Tekan tombol __Run__ (Play) atau tekan `Ctrl+R` (Windows/Linux) / `Cmd+R` (Mac).

## 🎨 Teknis

Project ini menggunakan:
- **Processing 3+** dengan renderer `P2D` untuk performa optimal
- **BezierCurve class** untuk mengelola setiap kurva secara independen
- **ArrayList** untuk mengelola koleksi kurva secara dinamis
- **Alpha blending** untuk efek trails yang halus

### Struktur File

- `BenangBenang.pde` - File utama yang mengatur setup dan animasi
- `BezierCurve.pde` - Class untuk mengelola setiap kurva Bézier

## 📄 Lisensi

Copyright © 2025.

Proyek ini dilisensikan di bawah __Apache License 2.0__. Lihat file LICENSE untuk detail selengkapnya.

---

_Dibuat untuk eksplorasi kreatif dan visualisasi algoritma kurva Bézier._

## 📖 Tentang

Project creative coding "BenangBenang" yang menghadirkan visualisasi kurva Bézier dengan pola organik yang menenun layar. Menggunakan algoritma Processing untuk menciptakan pola visual dinamis dengan efek jejak dan gerakan control point yang independen. Interaktif, estetis, dan penuh warna.
