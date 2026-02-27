# APLIKASI BANK SAMPAH DIGITAL

## Deskripsi Aplikasi
Aplikasi Bank Sampah Digital adalah aplikasi mobile berbasis Flutter yang digunakan untuk mencatat setoran sampah secara digital. Aplikasi ini memungkinkan pengguna untuk menambahkan, melihat, mengubah, dan menghapus data setoran sampah. Setiap data setoran terdiri dari nama penyetor, jenis sampah, dan berat sampah dalam satuan kilogram. Aplikasi ini membantu proses pencatatan menjadi lebih rapi, terstruktur, dan mudah dikelola.

## Struktur Folder Inti
```
lib/
├─ main.dart
└─ pages/
   ├─ home_page.dart
   └─ form_page.dart
```

## Fitur Aplikasi

### 1. Create (Tambah Data)
Pengguna dapat menambahkan data setoran sampah dengan mengisi form input yang terdiri dari nama penyetor, jenis sampah, dan berat sampah.

### 2. Read (Tampilkan Data)
Aplikasi menampilkan daftar seluruh data setoran yang telah dimasukkan beserta total jumlah setoran dan total berat sampah.

### 3. Update (Edit Data)
Pengguna dapat mengubah data setoran yang telah tersimpan melalui halaman form edit.

### 4. Delete (Hapus Data)
Pengguna dapat menghapus data setoran dari daftar yang tersedia.

### 5. Multi Page Navigation
Aplikasi memiliki beberapa halaman, yaitu:

- Halaman Utama (Daftar Setoran)
- Halaman Tambah Setoran
- Halaman Edit Setoran

## Widget yang Digunakan

- **GetMaterialApp**  
  Digunakan sebagai widget utama untuk mengatur konfigurasi aplikasi serta mendukung sistem navigasi menggunakan GetX.

- **Scaffold**  
  Digunakan sebagai struktur dasar halaman yang menampung AppBar, body, dan FloatingActionButton.

- **AppBar**  
  Digunakan untuk menampilkan judul dan bagian header pada setiap halaman aplikasi.

- **Column**  
  Digunakan untuk menyusun beberapa widget secara vertikal dari atas ke bawah.

- **Row**  
  Digunakan untuk menyusun beberapa widget secara horizontal dalam satu baris.

- **Expanded**  
  Digunakan untuk mengatur pembagian ruang agar widget dapat mengisi sisa ruang yang tersedia.

- **Container**  
  Digunakan untuk mengatur ukuran, padding, warna, dan dekorasi suatu komponen tampilan.

- **ListView**  
  Digunakan untuk menampilkan daftar data dalam bentuk list yang dapat digulir.

- **Card**  
  Digunakan untuk menampilkan data dalam bentuk kartu agar tampilan lebih rapi dan terstruktur.

- **ListTile**  
  Digunakan untuk menampilkan satu item data dalam bentuk baris di dalam ListView.

- **TextField**  
  Digunakan untuk menerima input data dari pengguna.

- **ElevatedButton**  
  Digunakan sebagai tombol untuk menjalankan aksi seperti menyimpan data.

- **FloatingActionButton**  
  Digunakan sebagai tombol utama untuk menambahkan data baru.

- **IconButton**  
  Digunakan sebagai tombol berbentuk ikon untuk aksi seperti edit dan hapus.

- **SizedBox**  
  Digunakan untuk memberikan jarak atau mengatur ukuran tertentu pada layout.

- **Navigator**  
  Digunakan untuk mengatur perpindahan halaman dalam aplikasi.
