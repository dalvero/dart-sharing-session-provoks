import 'dart:io';
import 'package:belajar_dart_dasar/model/mahasiswa.dart';
import 'package:belajar_dart_dasar/repository/repo_mahasiswa.dart';


class App {
  // INSTANCE REPOSITORY
  final RepoMahasiswa repo = RepoMahasiswa();

  // OPTION MENU
  List<String> mainMenu = [
    'Tambah Mahasiswa',
    'Tampilkan Semua Mahasiswa',
    'Cari Mahasiswa (berdasarkan NIM)',
    'Update Mahasiswa',
    'Hapus Mahasiswa',    
  ];

  App();

  // FUNGSI UTAMA RUN
  static void run() {    
    App().showMenu();
  }
  
  void showMenu() {
    bool isExit = false;    
    
    do {
      
      printSpace();
      printMenu(mainMenu, "Main Menu");
      int option = optionValidation(mainMenu);
      

      switch (option) {
        case 1:
          // TODO: Buat logika input data mahasiswa baru dan panggil repo.tambahMahasiswa()
          addMahasiswa();
          pause();
          break;
        case 2:
          // TODO: Panggil repo.tampilkanSemuaMahasiswa()
          repo.tampilkanSemuaMahasiswa();
          pause();
          break;
        case 3:
          // TODO: Input NIM dan panggil repo.getMahasiswaByNim()
          break;

        case 4:
          // TODO: Input NIM dan data baru, lalu panggil repo.updateMahasiswa()
          break;

        case 5:
          // TODO: Input NIM dan panggil repo.hapusMahasiswa()
          break;

        case 0:
          print("Keluar dari aplikasi...");
          isExit = true;
          break;

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

  // FUNCTION VALIDATE
  int optionValidation(List<String> menu){
    stdout.write("> Silahkan pilih menu : ");  
    int option = int.tryParse(stdin.readLineSync()?.trim() ?? ' ') ?? -1;

    if (option < 0 || option > menu.length) {
      return -1;
    }
    return option;
  }

  // FUNCTION PRINT SPACE
  void printSpace(){    
    for (var i = 0; i < 50; i++) {
      print("");
    }
  }

  // FUNCTION PAUSE
  void pause(){
    stdout.write("Tekan ENTER untuk melanjutkan...");
    stdin.readLineSync();
  }

  // FUNCTION ADD MAHASISWA
  void addMahasiswa(){
    Mahasiswa mhs = Mahasiswa.empty();

    // INPUT USER
    stdout.write("Masukkan NIM\t\t: ");
    mhs.nim = stdin.readLineSync()?.trim() ?? '';
    stdout.write("Masukkan Nama\t\t: ");
    mhs.name = stdin.readLineSync()?.trim() ?? '';    
    stdout.write("Masukan Fakultas\t:");
    mhs.fakultas = stdin.readLineSync()?.trim() ?? '';
    stdout.write("Masukan Prodi\t\t: ");
    mhs.prodi = stdin.readLineSync()?.trim() ?? '';
    repo.tambahMahasiswa(mhs);
  }
}
