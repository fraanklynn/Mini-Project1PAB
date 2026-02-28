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

## Screenshot Aplikasi
### Halaman Utama
#### <img width="1918" height="947" alt="image" src="https://github.com/user-attachments/assets/1d1fe5cc-6808-40a7-a9ed-8d781653dd5e" />
### Halaman saat menambah setoran sampah
#### <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/c3c983f4-98e8-4671-8239-3426993ecf92" />
### Setelah menginput setoran sampah yang baru
#### <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/ae373e06-4049-4e5b-9245-ff4e5780f4e3" />
### Salah satu setoran sampah dihapus
#### <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/cce0e5fd-dedf-4e4c-b289-34dd46c598f8" />
### Halaman saat mengupdate atau edit setoran
#### <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/301607f3-880a-481f-a0ff-dcfdaccb1471" />
### Setelah update atau edit setoran 
#### <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a9c6d048-9af8-49e1-851d-047b5cc0a686" />
### Halaman jika belum ada setoran
#### <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/49c026b1-b5f7-4be5-aafc-bfdc6389114a" />











