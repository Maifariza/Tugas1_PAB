# Shopping Cart App - State Management dengan Provider

## Disusun Oleh 

Nama: Maifariza Aulia Dyas  
NIM: 2409116032
Mata Kuliah: Mobile Programming  
Dosen Pengampu: Anton Prafanto, S.Kom., M.T.

## Deskripsi Project

Project ini merupakan implementasi aplikasi **Shopping Cart** sederhana menggunakan Flutter dengan state management Provider. Pada aplikasi ini, pengguna dapat melihat daftar produk, menambahkan produk ke dalam keranjang, mengatur jumlah produk, serta melakukan proses checkout dengan mengisi data pembeli.

Tujuan utama dari pengerjaan tugas ini adalah untuk memahami konsep pengelolaan state menggunakan Provider, serta bagaimana data dapat dibagikan dan diperbarui antar halaman tanpa perlu mengirimkan data secara manual (_prop drilling_).

---

## Fitur yang Diimplementasikan

Pada halaman utama, pengguna dapat melihat daftar produk yang ditampilkan dalam bentuk grid. Setiap produk memiliki tombol untuk menambahkan item ke keranjang. Ketika produk ditambahkan, jumlah item pada icon keranjang akan otomatis bertambah.

Di halaman cart, pengguna dapat melihat daftar item yang telah dipilih beserta jumlah (quantity) masing-masing produk. Quantity dapat ditambah atau dikurangi menggunakan tombol (+) dan (-). Jika quantity dikurangi hingga nol, maka produk akan otomatis terhapus dari keranjang. Selain itu, tersedia juga tombol untuk menghapus item secara langsung.

Total harga pada bagian bawah halaman cart akan selalu ter-update secara otomatis sesuai dengan perubahan quantity maupun penghapusan item.

---

## Fitur Bonus (Nilai Tambah)

Selain fitur wajib, saya juga menambahkan fitur bonus berupa:

1. Fitur pencarian produk berdasarkan nama, sehingga pengguna dapat dengan mudah menemukan produk tertentu.

   <img width="1904" height="939" alt="image" src="https://github.com/user-attachments/assets/7b26da8f-4ac0-4b1c-acf4-45503a44b03b" />

2. Filter berdasarkan kategori untuk mempermudah penyaringan produk.
  
   <img width="1906" height="337" alt="Screenshot 2026-02-23 130512" src="https://github.com/user-attachments/assets/320f2796-f347-4a53-87c9-0be40f8aa8b3" />

   
3. Halaman checkout terpisah yang menampilkan ringkasan pesanan (order summary) serta form pengisian data pembeli.
  
   Pada halaman checkout, pengguna diwajibkan mengisi nama, alamat, dan nomor telepon. Form tersebut memiliki validasi sederhana untuk memastikan data tidak kosong.

   Setelah tombol "Place Order" ditekan dan data valid, keranjang akan dikosongkan dan pengguna kembali ke halaman utama.

   <img width="233" height="48" alt="image" src="https://github.com/user-attachments/assets/9eccf0b4-f12a-4e91-8c12-7f42aabdbeb5" />


---

## Konsep State Management

State aplikasi dikelola menggunakan class `CartModel` yang meng-extend `ChangeNotifier`. Class ini bertanggung jawab untuk menyimpan daftar item dalam keranjang, menghitung total harga, serta menangani penambahan dan pengurangan quantity.

Dengan menggunakan Provider, perubahan state pada `CartModel` akan langsung memperbarui tampilan (UI) tanpa perlu memanggil ulang halaman secara manual. Pendekatan ini membuat struktur kode menjadi lebih rapi dan mudah dipahami.

---

