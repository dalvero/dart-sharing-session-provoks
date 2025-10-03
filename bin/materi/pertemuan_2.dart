// TIPE DATA & VARIABEL
import 'dart:io';

void main(){

  // DEKLARASI VARIABEL
  var nama = 'Tony'; // TIPE DATA AKAN OTOMATIS MENJADI STRING
  nama = 'Tony'; // NILAINYA BISA BERUBAH

  // NILAINYA AKAN DITENTUKAN SAAT PROGRAM DIEKSEKUSI
  // NILAI TIDAK BISA DIRUBAH
  final waktuSekarang = DateTime.now();
    
  // NILAINYA DITENTUKAN SEBELUM PROGRAM DIEKSEKUSI
  // NILAINYA TIDAK BISA DIRUBAH
  const phi = 3.14;

  print(nama);
  print(waktuSekarang);
  print(phi);

  // TIPE DATA DASAR
  String nickname = "Tonyton";
  int age = 23;
  double tall = 175.5;
  num weight = 70;
  bool isPerson = true;

  print(nickname);
  print(age);
  print(tall);
  print(weight);
  print(isPerson);

  // NULL SAFETY CONCEPT
  // 1. ? (NULLABLE) -> SEBUAH VARIABEL BISA BERNILAI NULL
  // String? namaPanggilan; // BISA BERNILAI NULL
  // print(namaPanggilan.length); // ERROR! KARENA NILAI NULL

  // HARUS DICEK DULU SEBELUM DIGUNAKAN (MISALNYA DENGAN IF)
  // if (namaPanggilan != null) {
  //   print(namaPanggilan.length);
  // }

  // 2. ! (NON-NULL ASSERTION) -> MEMAKSA VARIABEL BAHWA VARIABEL TSB TIDAK NULL
  // String? dataApi = "Data Masuk"; // BOLEH NULL
  // print(dataApi!.length); // AMAN (UNTUK SEMENTARA)
  // BAHAYA: JIKA dataApi TIBA-TIBA NULL, APLIKASI AKAN CRASH

  // 3. Late -> NANTI AKAN DIISI VARIABELNYA
  // VARIABEL INI DIJAMIN TIDAK NULL, TAPI NILAINYA AKAN DIISI NANTI
  // late final String apiURL; 

  // void inisialisasi() {
  //   apiURL = 'https://api.example.com'; // NILAI AKAN DITETAPKAN DISINI
  // }

  // BAHAYA: JIKA FUNGSI INISIALISASI() LUPA DIPANGGIL, DAN KITA MENGAKSES
  // apiURL, MAKA APLIKASI AKAN CRASH SAAT RUNTIME  

  // CASTING
  // 1. String to int/double
  String angkaStr = "123";
  int angkaInt = int.parse(angkaStr);
  double angkaDbl = double.parse(angkaStr);

  // 2. int/double to String
  int numInt = 23;
  double numDbl = 25.5;
  String numIntToStr = numInt.toString();
  String numDblToStr = numDbl.toString();

  print(angkaInt);
  print(angkaDbl);
  print(numInt);
  print(numDbl);
  print(numIntToStr);
  print(numDblToStr);

  // INPUTAN USER TANPA CASTING
  stdout.write("Masukan nama\t: ");  
  String? name = stdin.readLineSync();
  print(name);

  // INPUTAN USER DENGAN CASTING
  stdout.write("Masukkan Nilai Pertama (Angka): ");
  String? input = stdin.readLineSync()?.trim();

  // 1. KONVERSI KE int? (BISA JADI NULL JIKA INPUT SALAH/KOSONG)
  int? umurNull = int.tryParse(input ?? '');   

  // 2. GUNAKAN OPERATOR ?? UNTUK MENJAMIN NILAI DEFAULT 0(int non-nullable)
  int umur = umurNull ?? 0; 
  print("Umur anda : $umur");

  if (umur == 0 && input != null && input.isNotEmpty) {
    print("\nPERHATIAN: Umur dianggap 0 karena input tidak valid.");
  }

  

  // MANIPULASI STRING
  String kodeDiskonInput = "hemat"; // INPUT DENGAN HURUF KECIL
  double hargaAwal = 100.0;
  
  print("Kode Diskon Input: $kodeDiskonInput");
  print("Harga Awal: \$${hargaAwal.toStringAsFixed(2)}\n");

  // --- 1. toUpperCase() UBAH KE TEKS KAPITAL ---
  String kodeStandar = kodeDiskonInput.toUpperCase();
  print("1. Setelah toUpperCase(): $kodeStandar"); 
  
  // --- 2. substring() MENGAMBIL POTONGAN TEKS ---
  // MENGAMBIL 3 HURUF PERTAMA UNTUK ID KUPON
  String inisialKode = kodeStandar.substring(0, 3);
  print("2. Inisial Kode (substring 3 huruf): $inisialKode"); 
  
  // --- 3. Ternary Operator (? :) LOGIKA DISKON ---
  // JIKA KODE STANDAR ADALAH "HEMAT", BERI DISKON 10.0.
  // JIKA SALAH, DISKON 0.0.    
  
  // JIKA PAKAI IF ELSE
  // double diskon = 0;
  // if (kodeStandar == "HEMAT") {
  //   diskon = 10.0;
  // } else {
  //   diskon = 0.0;
  // }

                                  // JIKA BENAR : // JIKA SALAH
  double diskon = kodeStandar == "HEMAT" ? 10.0 : 0.0;  
      
  double hargaAkhir = hargaAwal - diskon;

  print("\n--- Hasil Logika ---");
  // GUNAKAN JUGA toStringAsFixed UNTUK MENGUBAH ANGKA DESIMAL 
  // MENJADI STRING DENGAN FORMAT ANGKA DIBELAKANG KOMA
  print("Diskon Diterapkan: \$${diskon.toStringAsFixed(2)}");
  print("Harga Akhir: \$${hargaAkhir.toStringAsFixed(2)}");
}