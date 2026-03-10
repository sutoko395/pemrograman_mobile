void main() {
  // Identitas
  String nama = "SUTOKO";
  String nim = "244107060040";

  // Mengambil 3 digit terakhir NIM
  double nilaiUnikNIM = 40.0;

  // List harga barang (minimal 5)
  List<double> hargaBarang = [
    50000.0,
    75000.0,
    30000.0,
    45000.0,
    25000.0
  ];

  // Menambahkan nilai unik NIM sebagai elemen ke-6
  hargaBarang.add(nilaiUnikNIM);

  // Menghitung total belanja
  double totalAwal = hitungTotal(hargaBarang);

  // Null safety
  String? pesanDiskon;

  double diskon = 0.0;

  // Logika diskon
  if (totalAwal > 200000) {
    diskon = totalAwal * 0.10;
    pesanDiskon = "Diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = totalAwal * 0.05;
    pesanDiskon = "Diskon 5%";
  } else {
    diskon = 0.0;
    pesanDiskon = "Tidak ada diskon";
  }

  double totalAkhir = totalAwal - diskon;

  // Output
  print("Nama: $nama");
  print("NIM: $nim");
  print("Total Awal: Rp $totalAwal");
  print("Besar Diskon: Rp $diskon");
  print("Keterangan Diskon: ${pesanDiskon!}");
  print("Total Akhir: Rp $totalAkhir");
}

// Fungsi menghitung total belanja
double hitungTotal(List<double> harga) {
  double total = 0;

  for (double h in harga) {
    total += h;
  }

  return total;
}