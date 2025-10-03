

import 'dart:io';

void main(){
              // 0 1 2 3              
  var title = ["Laptop", "Provoks Vokasi", "Meja", "Gedung Vokasi"];  


  for (var i = 0; i < title.length; i++) {
    printGaris(title[i], 100, '-');
  }

  patternSegitiga();
}

void printGaris(String title, int panjangGaris, String char){
  final int titleLength = title.length;

  if (titleLength > panjangGaris) {
    stdout.write(title);
    return;
  }

  final int remainingChars = panjangGaris - titleLength;
  final int paddingKiri = remainingChars ~/ 2; // 37 / 2 = 16.5 17, 16
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

void patternSegitiga(){
  for (var i = 0; i < 10; i++) {
    for (var j = 0; j < i; j++) {
      stdout.write("+");
    }
    print("");
  }
}