import 'dart:io';

/*
  ============================================
  PROGRAM: APLIKASI KONVERSI UNIT LENGKAP
  Kategori:
    1. Panjang
    2. Massa
    3. Volume
    4. Suhu
  ============================================

  Fitur:
  - Menu kategori
  - Minimal 5 unit per kategori
  - Validasi input
  - Menggunakan Map untuk faktor konversi
  - Output rapi
*/

void main() {
  while (true) {
    print('\n========== UNIT CONVERTER ==========');
    print('1. Panjang');
    print('2. Massa');
    print('3. Volume');
    print('4. Suhu');
    print('0. Keluar');
    stdout.write('Pilih kategori: ');

    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 0) {
      print('Terima kasih.');
      break;
    }

    switch (pilihan) {
      case 1:
        konversiPanjang();
        break;
      case 2:
        konversiMassa();
        break;
      case 3:
        konversiVolume();
        break;
      case 4:
        konversiSuhu();
        break;
      default:
        print('Pilihan tidak valid!');
    }
  }
}

/* ============================= */
/* KONVERSI PANJANG */
/* ============================= */

void konversiPanjang() {
  final Map<String, double> panjang = {
    'mm': 0.001,
    'cm': 0.01,
    'm': 1,
    'km': 1000,
    'inch': 0.0254
  };

  prosesKonversi(panjang, 'Panjang');
}

/* ============================= */
/* KONVERSI MASSA */
/* ============================= */

void konversiMassa() {
  final Map<String, double> massa = {
    'mg': 0.000001,
    'g': 0.001,
    'kg': 1,
    'ton': 1000,
    'lb': 0.453592
  };

  prosesKonversi(massa, 'Massa', tidakBolehNegatif: true);
}

/* ============================= */
/* KONVERSI VOLUME */
/* ============================= */

void konversiVolume() {
  final Map<String, double> volume = {
    'ml': 0.001,
    'liter': 1,
    'm3': 1000,
    'galon': 3.78541,
    'cup': 0.24
  };

  prosesKonversi(volume, 'Volume', tidakBolehNegatif: true);
}

/* ============================= */
/* KONVERSI SUHU */
/* ============================= */

void konversiSuhu() {
  print('\n--- Konversi Suhu ---');
  print('Unit: C, F, K');
  stdout.write('Masukkan nilai: ');
  double nilai = double.parse(stdin.readLineSync()!);

  stdout.write('Dari (C/F/K): ');
  String dari = stdin.readLineSync()!.toUpperCase();

  stdout.write('Ke (C/F/K): ');
  String ke = stdin.readLineSync()!.toUpperCase();

  double hasil = nilai;

  // Konversi ke Celsius dulu
  if (dari == 'F') {
    hasil = (nilai - 32) * 5 / 9;
  } else if (dari == 'K') {
    hasil = nilai - 273.15;
  }

  // Konversi dari Celsius ke tujuan
  if (ke == 'F') {
    hasil = (hasil * 9 / 5) + 32;
  } else if (ke == 'K') {
    hasil = hasil + 273.15;
  }

  print('\nHasil: ${hasil.toStringAsFixed(2)} °$ke');
}

/* ============================= */
/* FUNGSI UMUM KONVERSI MAP */
/* ============================= */

void prosesKonversi(Map<String, double> data, String kategori,
    {bool tidakBolehNegatif = false}) {
  print('\n--- Konversi $kategori ---');
  print('Unit tersedia: ${data.keys.join(', ')}');

  stdout.write('Masukkan nilai: ');
  double nilai = double.parse(stdin.readLineSync()!);

  // Validasi nilai negatif
  if (tidakBolehNegatif && nilai < 0) {
    print('Nilai tidak boleh negatif!');
    return;
  }

  stdout.write('Dari unit: ');
  String dari = stdin.readLineSync()!;

  stdout.write('Ke unit: ');
  String ke = stdin.readLineSync()!;

  if (!data.containsKey(dari) || !data.containsKey(ke)) {
    print('Unit tidak valid!');
    return;
  }

  // Konversi ke base unit
  double dalamBase = nilai * data[dari]!;

  // Konversi ke unit tujuan
  double hasil = dalamBase / data[ke]!;

  print('\n=================================');
  print('$nilai $dari = ${hasil.toStringAsFixed(4)} $ke');
  print('=================================');
}