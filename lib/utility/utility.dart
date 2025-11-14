import 'dart:io';

class Utility {
  // PRINT MENU
  void printMenu(List<String> menu){       
    print("");
    for (var i = 0; i < menu.length; i++) {
      print("${i+1}. ${menu[i]}");
      if (i == menu.length - 1) {
        print("0. Keluar");
      }
    }
  }

  // VALIDASI PILIHAN MENU
  int optionValidation(List<String> menu){
    stdout.write("> Silahkan pilih menu : ");  
    int option = int.tryParse(stdin.readLineSync()?.trim() ?? ' ') ?? -1;

    if (option < 0 || option > menu.length) {
      return -1;
    }
    return option;
  }

  // PAUSE
  void pause(){
    stdout.write("Tekan ENTER untuk melanjutkan...");
    stdin.readLineSync();
  }

  // PRINT DIVIDER DENGAN JUDUL
  void printDividerWithTitle(String title, String char, int panjangGaris){
    final int titleLength = title.length;

    if (titleLength > panjangGaris) {
      stdout.write(title);
      return;
    }

    final int remainingChars = panjangGaris - titleLength;
    final int paddingKiri = remainingChars ~/ 2; 
    final int paddingKanan = remainingChars - paddingKiri;

    for (var i = 0; i < paddingKiri; i++) {
      stdout.write(char);
    }
    
    stdout.write(title);

    for (var i = 0; i < paddingKanan; i++) {
      stdout.write(char);
    }
    print("");
  }

  // PRINT DIVIDER  
  void printDivider(String char, int panjangGaris){
    for (var i = 0; i < panjangGaris; i++){
      stdout.write(char);
    }
    print("");
  }

  // PRINT SPACE
  void printSpace(){
    for (var i = 0; i < 50; i++){
      print("");
    }
  }
}