// LOOPING

void main(List<String> args) {
  // LOOPING
  for (int i = 1; i <= 5; i++) {
    print(i); // Hasil: 1, 2, 3, 4, 5
  }

  // FOR LOOPING
  for (int i = 0; i < 5; i++) {
    print("Perulangan ke-$i");
  }

  // WHILE LOOPING
  int i = 1;
  while (i <= 3) {
    print("Angka ke-$i");
    i++;
  }

  // DO-WHILE LOOPING
  int j = 1;
  do {
    print("Nomor: $j");
    j++;
  } while (j <= 3);

  // FOR-IN LOOP
  var buah = ["Apel", "Jeruk", "Mangga", "Pisang"];
  for (var item in buah) {
    print(item);
  }













}




