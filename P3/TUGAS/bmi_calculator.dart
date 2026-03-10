import 'dart:io';

/*
  Program: BMI Calculator
  Deskripsi:
  Menghitung Body Mass Index berdasarkan berat (kg)
  dan tinggi (meter) yang diinput oleh user.
*/

void main() {
  print('=== PROGRAM BMI CALCULATOR ===');

  // Input berat badan
  stdout.write('Masukkan berat badan (kg): ');
  double berat = double.parse(stdin.readLineSync()!);

  // Input tinggi badan
  stdout.write('Masukkan tinggi badan (meter): ');
  double tinggi = double.parse(stdin.readLineSync()!);

  // Validasi input (tidak boleh <= 0)
  if (berat <= 0 || tinggi <= 0) {
    print('Berat dan tinggi harus lebih dari 0!');
    return;
  }

  // Rumus BMI
  double bmi = berat / (tinggi * tinggi);

  // Menentukan kategori BMI (operator ternary)
  String kategori = bmi < 18.5
      ? 'Kurus'
      : bmi < 25
          ? 'Normal'
          : bmi < 30
              ? 'Overweight'
              : 'Obesitas';

  print('\n=== HASIL ===');
  print('BMI Anda: ${bmi.toStringAsFixed(2)}');
  print('Kategori: $kategori');
}