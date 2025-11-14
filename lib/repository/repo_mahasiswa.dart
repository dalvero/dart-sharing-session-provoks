import 'package:belajar_dart_dasar/model/mahasiswa.dart';
import 'package:belajar_dart_dasar/utility/utility.dart';

class RepoMahasiswa {
  // LIST UNTUK MENYIMPAN DATA MAHASISWA
  final List<Mahasiswa> _listMahasiswa = [];

  // CREATE
  void tambahMahasiswa(Mahasiswa mhs) {
    // VALIDASI NIM
    for (var mahasiswa in _listMahasiswa) {
      if (mahasiswa.nim == mhs.nim) {
        print("Mahasiswa dengan NIM ${mhs.nim} sudah terdaftar!");
        return;
      }
    }
    _listMahasiswa.add(mhs);
    print("Mahasiswa '${mhs.name}' berhasil ditambahkan!");
  }

  // READ 
  List<Mahasiswa> getAllMahasiswa() {
    if (_listMahasiswa.isEmpty) {
      print("Data Mahasiswa masih kosong!");
    }
    return _listMahasiswa;
  }

  // READ BERDASARKAN NIM
  Mahasiswa? getMahasiswaByNim(String nim) {
    try {
      return _listMahasiswa.firstWhere((mhs) => mhs.nim == nim);
    } catch (e) {
      return null;
    }
  }

  // UPDATE BERDASARKAN NIM
  void updateMahasiswa(String nim, Mahasiswa updated) {
    for (var i = 0; i < _listMahasiswa.length; i++) {
      if (_listMahasiswa[i].nim == nim) {                
        // VALIDASI NIM MAHASISWA TERBARU
        for (var j = 0; j < _listMahasiswa.length; j++) {
          if (j != i && _listMahasiswa[j].nim == updated.nim) {
            print("NIM ${updated.nim} sudah digunakan oleh mahasiswa lain!");
            return;
          }
        }
        _listMahasiswa[i] = updated;
        print("Data Mahasiswa dengan NIM $nim berhasil diperbarui!");
        return;
      }
    }
    print("Mahasiswa dengan NIM $nim tidak ditemukan!");
  }

  // DELETE BERDASARKAN NIM
  void hapusMahasiswa(String nim) {
    _listMahasiswa.removeWhere((mhs) => mhs.nim == nim);
  }

  // TAMPILKAN SEMUA DATA
  void tampilkanSemuaMahasiswa() {
    if (_listMahasiswa.isEmpty) {
      print("Tidak ada data mahasiswa.");
    } else {
      Utility().printDividerWithTitle("Daftar Mahasiswa", "=", 50);
      for (var mhs in _listMahasiswa) {
        mhs.tampilkanData();
        print('');
      }
    }
  }
}
