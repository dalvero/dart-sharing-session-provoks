import 'dart:io';

void main() {
  // INPUT PANJANG ARRAY
  stdout.write("Masukkan jumlah elemen array: ");
  int n = int.parse(stdin.readLineSync()!);

  // DEKLARASI ARRAY A DAN B
  List<int> arrayA = [];
  List<int> arrayB = [];
  List<int> hasil = [];
  int sum = 0;

  // INPUT ARRAY A
  print("\nMasukkan elemen-elemen Array A:");
  for (int i = 0; i < n; i++) {
    stdout.write("A[$i] = ");
    int nilai = int.parse(stdin.readLineSync()!);
    arrayA.add(nilai);
  }

  // INPUT ARRAY B
  print("\nMasukkan elemen-elemen Array B:");
  for (int i = 0; i < n; i++) {
    stdout.write("B[$i] = ");
    int nilai = int.parse(stdin.readLineSync()!);
    arrayB.add(nilai);
  }

  // PENJUMLAHAN ARRAY
  for (int i = 0; i < n; i++) {
    hasil.add(arrayA[i] + arrayB[i]);
  }

  print("\nHasil penjumlahan Array A + Array B adalah:");
  for (int i = 0; i < n; i++) {
    print("Hasil[$i] = ${hasil[i]}");
  }

  // SUM DARI HASIL
  for (int i = 0; i < n; i++) {
    sum += hasil[i];
  }

  print("\nTotal dari hasil penjumlahan Array A + B adalah: $sum");
}
