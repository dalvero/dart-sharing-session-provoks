import 'dart:io';

void main(List<String> args){  
  String char = '-'; // SIMBOL GARIS 
  int panjang = 60; // PANJANG GARIS

  // JUDUL
  stdout.write("Masukan judul : ");
  var inputJudul = stdin.readLineSync()?.trim() ?? "Tidak ada input";

  // MENGAMBIL PANJANG JUDUL
  final int titleLength = inputJudul.length;

  // MENGECEK APAKAH PANJANG JUDUL LEBIH DARI PANJANG GARIS
  if (titleLength > panjang) {
    print(inputJudul);
    return;
  }

  // MENGHITUNG SISA KARAKTER DI KEDUA SISI
  final int remainingChars = panjang - titleLength;

  // MENGHITUNG KARAKTER DI SISI KIRI
  final int leftPadding = remainingChars ~/2;

  // MENGHITUNG DI SISI KANAN (UNTUK KASUS GANJIL)
  final int rightPadding = remainingChars - leftPadding;

  // MENCETAK PADDING KIRI
  for (int i = 0; i < leftPadding; i++) {
    stdout.write(char);
  }

  // MENCETAK JUDUL
  stdout.write(inputJudul);

  // MENCETAK PADDING KANAN
  for (int i = 0; i < rightPadding; i++) {
    stdout.write(char);
  }
  stdout.write('\n');
}

