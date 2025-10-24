// FUNCTION

void main(List<String> args) {
  sapa();
  print(tambah(2, 3));
  salam("Nello");
  print(kali(4, 5)); // 20
}

// FUNCTION SAPA
void sapa() {
  print("Halo, Dunia!");
}

// tipeData namaFunction(parameter) {
//   // blok kode
//   return nilai;
// }

// FUNCTION TAMBAH
int tambah(int a, int b) {
  return a + b;
}

// FUNCTION SALAM
void salam(String nama) {
  print("Halo, $nama!");
}

// FUNCTION KALI
int kali(int x, int y) {
  return x * y;
}

// ARROW FUNCTION
int tambahBilangan(int a, int b) => a + b;
// SAMA DENGAN
// int tambahBilangan(int a, int b) {
//   return a + b;
// }





