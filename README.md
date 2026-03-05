# Aplikasi Pertamaku - Flutter

## Deskripsi

Project ini merupakan hasil praktikum **Modul 2 – Konsep Dasar Widget** pada mata kuliah Mobile Programming menggunakan framework **Flutter**.
Aplikasi ini menampilkan contoh penggunaan beberapa widget dasar seperti **AppBar, Container, Row, Column, Card, Image, dan ListView** untuk membuat tampilan sederhana aplikasi. 

---

## Tujuan Praktikum

Tujuan dari praktikum ini adalah:

* Memahami konsep **Widget** dalam Flutter.
* Menggunakan widget **Row dan Column** untuk mengatur layout.
* Membuat tata letak sederhana menggunakan **Container dan Card**.
* Menampilkan daftar komentar menggunakan **ListView**. 

---

## Fitur Aplikasi

Aplikasi ini memiliki beberapa tampilan utama:

1. **AppBar**

   * Judul aplikasi: *Aplikasi Pertamaku*
   * Icon home pada bagian kiri.

2. **Artikel**

   * Menampilkan judul artikel.
   * Menampilkan gambar artikel.
   * Menampilkan deskripsi artikel.

3. **Komentar**

   * Menampilkan beberapa komentar menggunakan widget **ListView**.
   * Setiap komentar ditampilkan dalam **Card**.

---

## Widget yang Digunakan

Beberapa widget Flutter yang digunakan dalam project ini:

* MaterialApp
* Scaffold
* AppBar
* Container
* Row
* Column
* Card
* Image
* SizedBox
* ListView
* Text
* Icon

---

## Struktur Layout

Layout aplikasi dibuat menggunakan struktur widget sebagai berikut:

```
MaterialApp
 └── Scaffold
      ├── AppBar
      └── Body (Container)
           └── Column
                ├── Row (Icon + Text)
                ├── Card (Image + Text)
                ├── SizedBox
                ├── Row (Komentar)
                └── ListView (Daftar Komentar)
```

---

## Cara Menjalankan Project

1. Clone atau download project ini.
2. Buka project menggunakan **Visual Studio Code** atau **Android Studio**.
3. Jalankan perintah berikut pada terminal:

```
flutter pub get
```

4. Jalankan aplikasi:

```
flutter run
```

atau tekan **F5** pada VS Code.

---

## Tampilan Aplikasi

Aplikasi akan menampilkan halaman utama dengan:

* Judul aplikasi di bagian atas.
* Artikel dengan gambar.
* Daftar komentar di bagian bawah. 

---

## Teknologi yang Digunakan

* Flutter
* Dart
* Visual Studio Code

---

## Author

Nama : (Taslim Nuralim)
NIM  : (2306032)
Mata Kuliah : Pemograman Mobile 
