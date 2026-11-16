[README.md](https://github.com/user-attachments/files/34930088/README.md)
# UTS Pemrograman Mobile Lanjutan

Repository ini berisi pengerjaan Ujian Tengah Semester mata kuliah **Pemrograman Mobile Lanjutan**.

## Identitas Mahasiswa

- **Nama:** Muhammad Ridwan
- **NIM:** 1124160151
- **Kelas:** TI 24 SE1
- **Program Studi:** Software Engineering

## Daftar Proyek

Repository ini memuat dua folder proyek sesuai instruksi tugas. Letakkan file `README.md` ini di folder utama repository, sejajar dengan kedua folder proyek.

```text
uts-pml-1124160151-/
├── soal1_live_coding/
├── soal2-profil-app/
└── README.md
```

| Proyek | Folder | Keterangan |
|---|---|---|
| Soal 1 | `soal1_live_coding/` | Project untuk pengerjaan Soal 1. Ganti dengan nama folder sebenarnya dan tambahkan deskripsi project. |
| Soal 2 | `soal2-profil-app/` | Aplikasi Profil Mahasiswa menggunakan Flutter dan Dart. |


---

# Soal 2 – Aplikasi Profil Mahasiswa

## Deskripsi

Aplikasi Profil Mahasiswa merupakan aplikasi mobile sederhana yang dibuat menggunakan Flutter dan bahasa pemrograman Dart. Aplikasi ini menampilkan informasi mahasiswa serta menyediakan fitur untuk mengedit data profil, melihat informasi tentang mahasiswa, dan mengganti tema tampilan.

## Fitur Aplikasi

1. **Login dengan validasi form** – memeriksa kolom email dan password sebelum pengguna masuk ke halaman profil. Proses login pada versi ini merupakan simulasi lokal, belum menggunakan database atau layanan autentikasi.
2. **Profil Mahasiswa** – menampilkan foto, nama, NIM, program studi, kelas, bio singkat, dan informasi kontak.
3. **Edit Profil** – menyediakan formulir untuk mengubah data profil dengan validasi input.
4. **Tentang Saya** – menampilkan informasi keahlian, hobi, dan riwayat pendidikan.
5. **Navigasi halaman** – menggunakan Navigator dan Named Routes untuk berpindah ant halaman.
6. **Dark Mode dan Light Mode** – memungkinkan pengguna mengganti tema aplikasi.
7. **Foto dari Assets** – foto profil disimpan pada folder `assets/images/` dan didaftarkan melalui `pubspec.yaml`.

## Teknologi yang Digunakan

- Flutter
- Dart
- Visual Studio Code
- Android SDK
- Java Development Kit (JDK)

## Struktur Folder Soal 2

```text
soal2-profil-app/
├── android/
├── assets/
│   └── images/
│       └── Foto_Profil.jpeg
├── lib/
│   ├── main.dart
│   ├── app_theme.dart
│   ├── models/
│   │   └── profile.dart
│   ├── screens/
│   │   ├── login_page.dart
│   │   ├── profile_page.dart
│   │   ├── edit_profile_page.dart
│   │   └── about_page.dart
│   └── widgets/
├── pubspec.yaml
└── README.md
```

> Struktur di atas menggambarkan file dan folder utama Soal 2. Sesuaikan apabila ada file tambahan atau nama file yang berbeda pada project.

## Cara Menjalankan Project Soal 2

Pastikan Flutter dan Android SDK sudah terpasang dan dapat dikenali oleh komputer.

1. Buka terminal pada folder `soal2-profil-app`.
2. Jalankan perintah berikut untuk memasang dependencies:

   ```bash
   flutter pub get
   ```

3. Jalankan pemeriksaan kode:

   ```bash
   flutter analyze
   ```

4. Jalankan aplikasi pada perangkat atau emulator yang tersedia:

   ```bash
   flutter run
   ```

## Catatan Data Aplikasi

Data profil pada versi ini dikelola di dalam aplikasi dan belum disimpan secara permanen ke database. Proses Login juga masih berupa simulasi lokal, bukan autentikasi server.

## Membuat APK Release

Untuk membuat APK versi release, jalankan perintah dari folder `soal2-profil-app`:

```bash
flutter build apk --release
```

File hasil build berada di:

```text
build/app/outputs/flutter-apk/app-release.apk
```

## Download APK

APK versi release akan dibagikan melalui GitHub Releases dengan tag `v1.0.0` setelah release dipublikasikan.

[ Buka halaman GitHub Releases ](https://github.com/Wanzzz88/uts-pml-1124160151-/releases)

## Video Presentasi

Video presentasi berisi demonstrasi aplikasi terlebih dahulu, kemudian penjelasan struktur folder dan kode program.

**Link YouTube:** `https://youtu.be/CW6JXToNq9g`

Setelah video berhasil diunggah, ganti teks di atas dengan URL YouTube yang sebenarnya. Pastikan video dapat dibuka oleh dosen, misalnya dengan visibilitas **Unlisted**.

## Repository

Repository GitHub: [uts-pml-1124160151-](https://github.com/Wanzzz88/uts-pml-1124160151-)

---

© 2026 Muhammad Ridwan – UTS Pemrograman Mobile Lanjutan.
