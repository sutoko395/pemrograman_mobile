import 'dart:io';

/*
  Program: Currency Converter
  Deskripsi:
  Mengkonversi mata uang antara:
  IDR, USD, EUR
*/

void main() {
  print('=== KALKULATOR KONVERSI MATA UANG ===');

  // Konstanta nilai tukar (contoh statis)
  const double rateUsdToIdr = 15500;
  const double rateEurToIdr = 17000;

  stdout.write('Masukkan jumlah uang: ');
  double amount = double.parse(stdin.readLineSync()!);

  stdout.write('Dari mata uang (IDR/USD/EUR): ');
  String from = stdin.readLineSync()!.toUpperCase();

  stdout.write('Ke mata uang (IDR/USD/EUR): ');
  String to = stdin.readLineSync()!.toUpperCase();

  double result = amount;

  // Konversi ke IDR dulu
  if (from == 'USD') {
    result = amount * rateUsdToIdr;
  } else if (from == 'EUR') {
    result = amount * rateEurToIdr;
  }

  // Konversi dari IDR ke tujuan
  if (to == 'USD') {
    result = result / rateUsdToIdr;
  } else if (to == 'EUR') {
    result = result / rateEurToIdr;
  }

  print('\nHasil konversi: ${result.toStringAsFixed(2)} $to');
}