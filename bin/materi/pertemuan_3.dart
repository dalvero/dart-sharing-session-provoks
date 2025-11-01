// ARRAY

void main(List<String> args) {
  // INISIALISASI
  List<String> hewan = [];
  hewan = ["kucing", "kambing", "sapi"];  

  // MENCETAK ARRAY DENGAN LOOPING
  for (var i = 0; i < hewan.length; i++) {
    print(hewan[i]);
  }

  // DEKLARASI
  List<String> buah = [];

  // MENAMBAH ELEMEN
  buah.add("semangka");
  buah.add("durian");

  // MENGAKSES ELEMEN
  buah[0]; // semangka
  // hewan[4]; // ERROR : INDEX OUT OF BOUND

  // MENGUBAH ELEMEN
  buah[1] = "pisang";

  // INISIALISASI ARRAY DENGAN JUMLAH ELEMEN TETAP
  //List<int> nilai = List.filled(5, 0); // isi awal 0 semua
  
  // TIPE DATA WAJIB SESUAI DEKLARASI
  // List<int> nilai = [1, 2, "3"]; // ❌ error

  // === PENJUMLAHAN ELEMEN ===
  // INISIALISASI ARRAY
  List<int> angka = [2, 3, 4];

  // DEKLARASI VARIABEL
  int sum = 0;

  // KALKULASI
  for (var i = 0; i < angka.length; i++) {
    sum += angka[i];
  }

  // PRINT
  print(sum); // 9

  // === NILAI MAX ===
  List<int> bil = [2, 1, 10, 21, 24];
  int bilMax = bil[0];

  // LOGIKA
  for (var i = 0; i < bil.length; i++) {
    if (bil[i] > bilMax) {
      bilMax = bil[i];
    }
  }

  // PRINT
  print("Bilangan Maksimum = $bilMax"); // 24

  // === PENJUMLAHAN 2 ARRAy ===  
  List<int> A = [2, 4, 6];
  List<int> B = [1, 3, 5];
  List<int> hasil = [];

  // for (int i = 0; i < A.length; i++) {
  //   hasil.add(A[i] + B[i]);
  // }

  // print("Hasil penjumlahan array A + B:");
  // for (int i = 0; i < hasil.length; i++) {
  //   print("Hasil[$i] = ${hasil[i]}");
  // }

  print("==================");
  // === PENJUMLAHAN 2 ARRAY 2 ===    

  int dariBelakang = A.length - 1;


  for (int i = 0; i < A.length; i++) {
    // for (int j = A.length - 1; j >= 0; j--) {
    //   print("Penjumlahan $i =  ${A[i]} + ${B[j]} = ${A[i] + B[j]}" );
    // }
    hasil.add(A[i] + B[dariBelakang]);    
    print("${A[i]} + ${B[dariBelakang]}");
    dariBelakang--;  
  }

  print("Hasil penjumlahan array A + B:");
  for (int i = 0; i < A.length; i++) {
    print("Hasil[$i] = ${hasil[i]}");
  }
}



