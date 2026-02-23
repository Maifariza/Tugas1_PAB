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

  

2. Filter berdasarkan kategori untuk mempermudah penyaringan produk.

   
3. Halaman checkout terpisah yang menampilkan ringkasan pesanan (order summary) serta form pengisian data pembeli.

Pada halaman checkout, pengguna diwajibkan mengisi nama, alamat, dan nomor telepon. Form tersebut memiliki validasi sederhana untuk memastikan data tidak kosong. Setelah tombol "Place Order" ditekan dan data valid, keranjang akan dikosongkan dan pengguna kembali ke halaman utama.

---

## Konsep State Management

State aplikasi dikelola menggunakan class `CartModel` yang meng-extend `ChangeNotifier`. Class ini bertanggung jawab untuk menyimpan daftar item dalam keranjang, menghitung total harga, serta menangani penambahan dan pengurangan quantity.

Dengan menggunakan Provider, perubahan state pada `CartModel` akan langsung memperbarui tampilan (UI) tanpa perlu memanggil ulang halaman secara manual. Pendekatan ini membuat struktur kode menjadi lebih rapi dan mudah dipahami.

---

