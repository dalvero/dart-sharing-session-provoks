import 'dart:io';

void main(List<String> args) {
  // MENU PAKET KETENGAN
  List<String> menuPaketKetengan = [
    "Harian Aplikasi",
    "Harian Kuota Utama",
    "Bulanan Aplikasi",
    "Paket Darurat",
    "Belajar Bisnis Online",
    "Beli Masa Aktif",
    "Hadiah 7.5 GB",
    "Cek Pulsa"    
  ];

  // MENU KUOTA
  List<String> menuKuota = [
    "Ya",
    "Cek Kuota",
    "Nelpon",
    "Internet",
    "Lainnya"
  ];

  List<String> menuDummy = [
    "Pilihan",
    "Pilihan",
    "Pilihan",
  ];

  // isExit KONDISI
  bool isExit = false;

  // MAIN LOOPING
  do {
    printSpace();
    printMenu(menuPaketKetengan, "Paket Ketengan");
    int option = optionValidation(menuPaketKetengan);
    switch (option) {
      case 1:
        harianAplikasi(menuDummy, "Harian Aplikasi");
        isExit = false;   
        break;
      case 2:               
        harianKuotaUtama(menuKuota, "Harian Kuota Utama");
        isExit = false;
        break;
      case 0:
        isExit = true;
      default:
    }
  } while (!isExit);
}

// FUNCTION PRINT MENU
void printMenu(List<String> menu, String title){
  print(title);
  print("");
  for (var i = 0; i < menu.length; i++) {
    print("${i+1}. ${menu[i]}");
    if (i == menu.length - 1) {
      print("0. Keluar");
    }
  }
}

// FUNCTION PRINT SPACE
void printSpace(){
  for (var i = 0; i < 50; i++) {
    print("");
  }
}

// FUNCTION VALIDATE
int optionValidation(List<String> menu){
  stdout.write("> Silahkan pilih menu : ");  
  int option = int.tryParse(stdin.readLineSync()?.trim() ?? ' ') ?? -1;

  if (option < 0 || option > menu.length) {
    return -1;
  }
  return option;
}

// FUNCTION MENU HARIAN APLIKASI
void harianAplikasi(List<String> menu, String title){
  bool isBack = false;
  do {
    printSpace();
    printMenu(menu, title);
    int option = optionValidation(menu);
    switch (option) {
      case 1:        
        isBack = false;
        break;
      case 0:
        isBack = true;
      default:
    }
  } while (!isBack);
}

// FUNCTION MENU HARIAN KUOTA
void harianKuotaUtama(List<String> menu, String title){
  bool isBack = false;
  do {
    printSpace();
    printMenu(menu, title);
    int option = optionValidation(menu);
    switch (option) {
      case 1:
        print("asdasd");
        isBack = false;
        break;
      case 0:
        isBack = true;
        break;
      default:
    }
  } while (!isBack);
}


