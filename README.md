<h1 align="center">🛍️ Shopping Cart App State Management dengan Provide 𖤓</h2>


| **IDENTITAS** | **KETERANGAN** |
|--------------|----------------|
| Nama | Maifariza Aulia Dyas |
| NIM | 2409116032 |
| Kelas | Sistem Informasi A 24 |
| Mata Kuliah | Pemrograman Aplikasi Bergerak |
| Dosen Pengampu | Anton Prafanto, S.Kom., M.T. |

## Deskripsi Aplikasi

Aplikasi ini merupakan mini e-commerce sederhana berbasis Flutter yang memiliki fitur keranjang belanja (shopping cart). Pengguna dapat melihat daftar produk yang tersedia, lalu menambahkan produk tersebut ke dalam keranjang sesuai kebutuhan.

Di dalam keranjang, pengguna bisa mengatur jumlah pembelian, menghapus produk, serta melihat total harga yang akan dibayar. Total harga akan otomatis berubah mengikuti jumlah produk yang dipilih.

Selain itu, aplikasi ini juga menyediakan halaman checkout yang menampilkan ringkasan pesanan serta form untuk mengisi data pembeli sebelum pesanan diselesaikan.

Aplikasi ini dibuat untuk mensimulasikan proses belanja sederhana dalam satu aplikasi mobile.

---

## Ketentuan Aplikasi

**FITUR WAJIB**

- Add to cart from product list ✅
- Show cart items dengan quantity ✅
- Update quantity (+/-) ✅
- Remove items from cart ✅
- Display total price correctly ✅

**FITUR BONUS**

- Search / Filter produk ✅
- Filter berdasarkan kategori ✅
- Checkout Page (Order Summary + Form) ✅

---

## Alur Penggunaan Aplikasi

1. **Membuka Aplikasi**
  
   Saat aplikasi dijalankan, pengguna langsung melihat halaman daftar produk. Produk ditampilkan dalam bentuk grid sehingga mudah dilihat dan dipilih.

   <img width="1903" height="943" alt="image" src="https://github.com/user-attachments/assets/f1a07676-393a-41f7-8cd4-2f6e6fb93992" />

  
2. **Menambahkan Produk ke Keranjang**
  
   Pengguna dapat menekan tombol “Add” pada produk yang ingin dibeli. Produk akan langsung masuk ke dalam keranjang. Jika produk yang sama ditambahkan lagi, jumlahnya akan otomatis bertambah.

   <img width="1908" height="880" alt="image" src="https://github.com/user-attachments/assets/f6b5f1da-9689-41d7-99f6-cc5d4fc56fd9" />

3. **Melihat Isi Keranjang**
  
   Untuk melihat produk yang sudah dipilih, pengguna dapat menekan icon keranjang di bagian atas layar. Halaman cart akan menampilkan daftar produk beserta jumlah masing-masing.

   <img width="1902" height="940" alt="Screenshot 2026-02-23 171815" src="https://github.com/user-attachments/assets/744ee2ad-f169-4e94-bf94-354caf83e776" />

   
4. **Mengatur Jumlah Produk**
  
   Di halaman cart, pengguna bisa menambah jumlah produk dengan tombol (+) atau mengurangi dengan tombol (-). Jika jumlah dikurangi sampai nol, produk akan otomatis terhapus dari keranjang.

   <img width="1900" height="933" alt="image" src="https://github.com/user-attachments/assets/e2f39306-7227-4e7a-89e6-1dccd5071cb8" />

   
5. **Melihat Total Harga**
  
   Total harga ditampilkan di bagian bawah halaman cart. Nilai total akan selalu berubah mengikuti jumlah dan produk yang ada di dalam keranjang.

   <img width="1911" height="117" alt="image" src="https://github.com/user-attachments/assets/1d10b5fc-f24e-4e1e-9742-d232c797bba8" />

   
6. **Melakukan Checkout**
  
   Jika sudah selesai memilih produk, pengguna dapat menekan tombol “Checkout”. Pengguna akan diarahkan ke halaman checkout yang menampilkan ringkasan pesanan.

   <img width="1910" height="941" alt="image" src="https://github.com/user-attachments/assets/5be54103-6138-4fb2-9dd0-ebe40e12d82f" />


7. **Mengisi Data Pembeli**
  
   Pada halaman checkout, pengguna diminta mengisi nama, alamat, dan nomor telepon. Semua data harus diisi sebelum pesanan bisa diproses.

   <img width="1902" height="943" alt="image" src="https://github.com/user-attachments/assets/b2f54188-fae2-4f07-9144-074fcf5a9a34" />


8. **Menyelesaikan Pesanan**
  
    Setelah menekan tombol “Place Order” dan data sudah valid, pesanan dianggap selesai. Keranjang akan dikosongkan dan pengguna kembali ke halaman utama. Setelah itu, akan muncul notifikasi di bagian bawah layar yang menandakan bahwa pesanan berhasil diproses.

   <img width="1910" height="956" alt="image" src="https://github.com/user-attachments/assets/c8fc23dc-3b31-4f6d-9c4f-657f7aea1137" />

---

**𝜗ৎ FITUR BONUS**

1. **Search / Filter Produk**

   Aplikasi menyediakan fitur pencarian produk melalui kolom Search product yang berada di bawah pilihan kategori.

   Pengguna dapat mengetikkan nama produk yang ingin dicari. Saat pengguna mulai mengetik, daftar produk akan otomatis tersaring sesuai dengan kata kunci yang dimasukkan.

   Sebagai contoh, ketika pengguna mengetik “Laptop”, maka hanya produk Laptop Gaming yang akan ditampilkan. Produk lain yang tidak mengandung kata “Laptop” pada namanya tidak akan muncul.

   Pencarian ini bersifat langsung (real-time), sehingga hasil akan berubah mengikuti setiap huruf yang diketik. Jika kolom pencarian dikosongkan, maka semua produk akan ditampilkan kembali sesuai kategori yang sedang dipilih.

   <img width="1901" height="938" alt="image" src="https://github.com/user-attachments/assets/61ff9160-4d01-4042-9d0a-8c0f050fc58c" />


2. **Filter Berdasarkan Kategori**

   Pada bagian atas halaman produk terdapat pilihan kategori seperti All, Electronics, Accessories, Wearable, dan Photography. Ketika pengguna memilih salah satu kategori, maka produk yang ditampilkan akan disaring sesuai kategori tersebut.

   Sebagai contoh, ketika kategori Accessories dipilih, maka hanya produk yang termasuk kategori Accessories saja yang akan muncul di layar. Produk dari kategori lain tidak akan ditampilkan sampai pengguna mengganti kembali ke kategori lain atau memilih All untuk menampilkan semua produk.

   <img width="1903" height="939" alt="image" src="https://github.com/user-attachments/assets/5e68f231-89ee-41f8-97a5-25b71c4264cc" />

3. **Checkout Page (Order Summary + Form)**

   Setelah pengguna menekan tombol checkout dari halaman keranjang, aplikasi akan menampilkan halaman Checkout yang berisi ringkasan pesanan dan form data pembeli.

   Pada bagian atas halaman, ditampilkan Order Summary, yaitu daftar produk yang dibeli lengkap dengan jumlah item dan total harga. Total harga akan otomatis dihitung berdasarkan produk yang ada di keranjang.

   Di bawah ringkasan pesanan, terdapat bagian Customer Information yang berisi beberapa field yang harus diisi oleh pengguna, yaitu:
   
   ╰┈➤ Full Name
   
   ╰┈➤ Address
   
   ╰┈➤ Phone Number

   Pengguna wajib mengisi data tersebut sebelum menyelesaikan pesanan. Jika ada data yang belum diisi, maka pesanan tidak dapat diproses.

   Setelah semua data diisi dengan benar dan tombol Place Order ditekan, sistem akan:

   - Menganggap pesanan berhasil diproses
   - Mengosongkan isi keranjang
   - Mengembalikan pengguna ke halaman utama
   - Menampilkan notifikasi bahwa pesanan berhasil dilakukan
     
   
   <img width="1906" height="943" alt="image" src="https://github.com/user-attachments/assets/5fd1f293-baa6-4059-893e-ba07378f6964" />
