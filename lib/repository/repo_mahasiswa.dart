import 'package:belajar_dart_dasar/model/mahasiswa.dart';

class RepoMahasiswa {
  // LIST UNTUK MENYIMPAN DATA MAHASISWA
  final List<Mahasiswa> _listMahasiswa = [];

  // CREATE
  void tambahMahasiswa(Mahasiswa mhs) {
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
      print("Mahasiswa dengan NIM $nim tidak ditemukan!");
      return null;
    }
  }

  // UPDATE BERDASARKAN NIM
  void updateMahasiswa(String nim, Mahasiswa updated) {
    for (var i = 0; i < _listMahasiswa.length; i++) {
      if (_listMahasiswa[i].nim == nim) {
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
    print("Mahasiswa dengan NIM $nim dihapus (jika ada).");
  }

  // TAMPILKAN SEMUA DATA
  void tampilkanSemuaMahasiswa() {
    if (_listMahasiswa.isEmpty) {
      print("Tidak ada data mahasiswa.");
    } else {
      print("\nDaftar Mahasiswa:");
      for (var mhs in _listMahasiswa) {
        mhs.tampilkanData();
        print('');
      }
    }
  }
}
