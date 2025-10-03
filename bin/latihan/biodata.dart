/*
SOAL
  1. Menerima 10 Input dari Pengguna: Nama, Kelas, NIM, Universitas, Fakultas, Hobi, 
     Umur, Tahun Lahir, Asal Kota.
  2. Menerapkan Null Safety & ??: Jika input String kosong, berikan nilai default 
     (misalnya "Tidak ada nama").
  3. Menerapkan tryParse: Untuk input int (NIM, Umur, Tahun Lahir), gunakan int.tryParse() 
     dan operator ?? untuk menetapkan nilai default yang tidak valid (-1) jika input gagal dikonversi.
  4. Validasi Akhir: Cek apakah input angka (NIM, Umur, Tahun Lahir) memiliki nilai negatif (< 0). 
     Jika ya, batalkan pencetakan biodata dan tampilkan pesan error.
     
  Jika validasi berhasil, program harus menghasilkan UserID dengan format: 
  [INISIAL] - [3 DIGIT AKHIR NIM] - [2 DIGIT AKHIR TAHUN LAHIR] - PROVOKS.
    
    Anda harus menggunakan teknik manipulasi String untuk:

    INISIAL: Ambil 2 huruf pertama dari Nama dan ubah menjadi huruf kapital (toUpperCase()). 
    Jika nama kurang dari 2 huruf, gunakan seluruh nama dan ubah menjadi kapital.
    a. 3 DIGIT AKHIR NIM: Ambil 3 digit terakhir dari NIM.
    b. 2 DIGIT AKHIR TAHUN LAHIR: Ambil 2 digit terakhir dari Tahun Lahir.
*/

import 'dart:io';

void main(List<String> args){
  // TIPE DATA DAN INPUT USER
  stdout.write("Masukan nama\t\t: ");
  String? nama = stdin.readLineSync()?.trim() ?? "Tidak ada nama";

  stdout.write("Masukan kelas\t\t: ");
  String? kelas = stdin.readLineSync()?.trim() ?? "Tidak ada kelas";

  stdout.write("Masukan nim\t\t: ");  
  int? nim = int.tryParse(stdin.readLineSync()?.trim() ?? '-1') ?? -1;

  stdout.write("Masukan universitas\t: ");
  String? universitas = stdin.readLineSync()?.trim() ?? "Tidak ada universitas";

  stdout.write("Masukan fakultas\t: ");
  String? fakultas = stdin.readLineSync()?.trim() ?? "Tidak ada fakultas";

  stdout.write("Masukan hobi\t\t: ");
  String? hobi = stdin.readLineSync()?.trim() ?? "Tidak ada hobi";

  stdout.write("Masukan umur\t\t: ");  
  int? umur = int.tryParse(stdin.readLineSync()?.trim() ?? '-1') ?? -1;

  stdout.write("Masukan tahun lahir\t: ");  
  int? tahunLahir = int.tryParse(stdin.readLineSync()?.trim() ?? '-1') ?? -1;

  stdout.write("Masukan asal kota\t: ");
  String? asalKota = stdin.readLineSync()?.trim() ?? "Tidak ada asalKota";

  // BUAT KODE NAME
  String inisial = nama.length >= 2 ? nama.substring(0, 2).toUpperCase() : nama.toUpperCase();
  String nimString = nim.toString();
  String nimAkhir = nimString.substring(nimString.length - 3);
  String tahunString = tahunLahir.toString();
  String tahunAkhir = tahunString.substring(tahunString.length - 2);
  String userID = "$inisial - $nimAkhir - $tahunAkhir - PROVOKS";

  // PRINT BIODATA
  if (nim < 0 || tahunLahir < 0 || umur < 0) {
    print("\nMaaf biodata gagal dicetak karena kesalahan inputan.");
  } else {
    print("");
    print("Halo, kenalin namaku $nama, aku dari kelas $kelas dengan nim $nim.");
    print("Aku sedang berkuliah di $universitas, tepatnya di fakultas $fakultas");
    print("Hobiku adalah $hobi, saat ini umurku adalah $umur, aku lahir tahun $tahunLahir");
    print("dan aku berasal dari kota $asalKota.");
    print("");
    print("Salam Provoks - $userID");
  }
}