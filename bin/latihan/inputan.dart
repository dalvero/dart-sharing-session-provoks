/*
SOAL
  1. Meminta pengguna memasukkan Nilai 1 dan Nilai 2 (angka).
  2. Menggunakan stdin.readLineSync() untuk membaca input (hasilnya pasti String?).
  3. Menggunakan int.tryParse() untuk mencoba mengubah input tersebut menjadi int?.
  4. Menggunakan operator ?? (Null-Aware) untuk menetapkan nilai default 0 jika 
     pengguna memasukkan input kosong atau salah.
  5. Melakukan penjumlahan dari kedua nilai tersebut dan menampilkan hasilnya.
*/


import 'dart:io';

void main() {
  print("--- Aplikasi Penjumlahan Konsol ---");
  
  // --- INPUT NILAI PERTAMA ---
  stdout.write("Masukkan Nilai Pertama (Angka): ");
  String? input1 = stdin.readLineSync();

  // 1. KONVERSI KE int? (BISA JADI NULL JIKA INPUT SALAH/KOSONG)
  int? nilai1Null = int.tryParse(input1 ?? ''); 
  
  // 2. GUNAKAN OPERATOR ?? UNTUK MENJAMIN NILAI DEFAULT 0(int non-nullable)
  int nilai1 = nilai1Null ?? 0; 
  
  
  // --- INPUT NILAI KEDUA ---
  stdout.write("Masukkan Nilai Kedua (Angka): ");
  String? input2 = stdin.readLineSync();

  // KONVERSI DAN JAMIN NILAI NON-NULL DALAM SATU BARIS (LEBIH RINGKAS)
  int nilai2 = int.tryParse(input2 ?? '') ?? 0;
  
  
  // --- PROSES LOGIKA & OUTPUT ---
  int hasilPenjumlahan = nilai1 + nilai2;

  print("\n--- Hasil Perhitungan ---");
  print("Nilai 1 yang digunakan: $nilai1");
  print("Nilai 2 yang digunakan: $nilai2");
  print("Hasil Penjumlahan adalah: $hasilPenjumlahan");

  // LOGIKA TAMBAHAN : CEK APAKAH INPUT VALID
  if (nilai1 == 0 && input1 != null && input1.isNotEmpty) {
    print("\nPERHATIAN: Nilai Inputan dianggap 0 karena input tidak valid.");
  }
}
