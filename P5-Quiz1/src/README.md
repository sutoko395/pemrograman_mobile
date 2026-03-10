# Quiz 1 - Pemrograman Mobile (Dart)

## Pengaruh NIM terhadap Total Belanja

Pada program ini, NIM digunakan untuk menghasilkan nilai unik yang mempengaruhi perhitungan total belanja. Tiga digit terakhir dari NIM saya, yaitu **040**, diambil dan dikonversi menjadi nilai numerik **40.0**. Nilai tersebut kemudian ditambahkan sebagai elemen tambahan ke dalam daftar harga barang (`List<double>`).

Penambahan nilai unik dari NIM ini membuat total belanja setiap mahasiswa menjadi berbeda meskipun daftar harga barang yang digunakan sama. Dengan demikian, setiap program memiliki hasil perhitungan yang bersifat personal dan tidak identik antara satu mahasiswa dengan mahasiswa lainnya.

Dalam kasus saya, nilai **40.0** dari tiga digit terakhir NIM ditambahkan ke dalam daftar harga barang sebelum proses perhitungan total dilakukan. Nilai ini ikut dijumlahkan bersama harga barang lainnya sehingga mempengaruhi total awal belanja yang kemudian digunakan dalam proses perhitungan diskon dan total akhir pembayaran.
