import 'dart:io';
import 'package:belajar_dart_dasar/model/mahasiswa.dart';
import 'package:belajar_dart_dasar/repository/repo_mahasiswa.dart';
import 'package:belajar_dart_dasar/utility/utility.dart';


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
      
      Utility().printSpace();
      Utility().printDividerWithTitle("Menu Utama", "=", 50);
      Utility().printMenu(mainMenu);
      int option = Utility().optionValidation(mainMenu);
      
      switch (option) {
        case 1:          
          createMahasiswa();
          Utility().pause();
          break;
        case 2:
          repo.tampilkanSemuaMahasiswa();
          Utility().pause();
          break;
        case 3:
          String nim = '';
          
          // INPUT NIM
          stdout.write("Masukkan NIM\t\t: ");
          nim = stdin.readLineSync()?.trim() ?? '';
          Mahasiswa? mhs = repo.getMahasiswaByNim(nim);

          // VALIDASI
          if (mhs != null) {
            Utility().printSpace();
            mhs.tampilkanData();
          } else {
            print("Mahasiswa dengan NIM $nim tidak ditemukan.");
          }
          Utility().pause();
          break;
        case 4:
          updateMahasiswaByNim();
          Utility().pause();
          break;
        case 5:
          deleteMahasiswaByNim();
          Utility().pause();
          break;
        case 0:
          print("Keluar dari aplikasi...");
          isExit = true;
          break;

        default:
      }
    } while (!isExit);
  }

  // FUNCTION ADD MAHASISWA
  void createMahasiswa(){
    Mahasiswa mhs = Mahasiswa.empty();

    // INPUT USER
    stdout.write("Masukkan Nama\t\t: ");
    mhs.name = stdin.readLineSync()?.trim() ?? '';    
    stdout.write("Masukkan NIM\t\t: ");
    mhs.nim = stdin.readLineSync()?.trim() ?? '';  
    stdout.write("Masukan Fakultas\t: ");
    mhs.fakultas = stdin.readLineSync()?.trim() ?? '';
    stdout.write("Masukan Prodi\t\t: ");
    mhs.prodi = stdin.readLineSync()?.trim() ?? '';
    repo.tambahMahasiswa(mhs);
  }

  // FUNCTION UPDATE MAHASISWA BY NIM
  void updateMahasiswaByNim(){
    String nim = '';

    // INPUT NIM
    stdout.write("Masukkan NIM Mahasiswa yang akan diupdate : ");
    nim = stdin.readLineSync()?.trim() ?? '';

    // APAKAH ADA MAHASISWA DENGAN NIM TERSEBUT?
    Mahasiswa? existingMhs = repo.getMahasiswaByNim(nim);
    if (existingMhs == null) {
      print("Mahasiswa dengan nim $nim tidak ditemukan!");
      print("Gagal update mahasiswa.");
      return;
    }

    // INPUT DATA BARU
    Mahasiswa updateMhs = Mahasiswa.empty();    
    stdout.write("Masukkan Nama\t\t: ");
    updateMhs.name = stdin.readLineSync()?.trim() ?? '';    
    stdout.write("Masukkan NIM\t\t: ");
    updateMhs.nim = stdin.readLineSync()?.trim() ?? '';
    stdout.write("Masukan Fakultas\t: ");
    updateMhs.fakultas = stdin.readLineSync()?.trim() ?? '';
    stdout.write("Masukan Prodi\t\t: ");
    updateMhs.prodi = stdin.readLineSync()?.trim() ?? '';

    // PANGGIL UPDATE
    repo.updateMahasiswa(nim, updateMhs);
  }

  // FUNCTION DELETE MAHASISWA
  void deleteMahasiswaByNim(){
    String nim = '';          
    // INPUT NIM
    stdout.write("Masukkan NIM\t\t: ");
    nim = stdin.readLineSync()?.trim() ?? '';
    Mahasiswa? mhs = repo.getMahasiswaByNim(nim);

    // VALIDASI
    if (mhs != null) {
      repo.hapusMahasiswa(nim);
      print("Mahasiswa dengan NIM $nim berhasil dihapus.");
    } else {
      print("Mahasiswa dengan NIM $nim tidak ditemukan.");
      print("Gagal menghapus mahasiswa.");
    }
  }
}
