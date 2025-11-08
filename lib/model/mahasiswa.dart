class Mahasiswa {
  // FIELDS 
  String name;
  String nim;
  String prodi;
  String fakultas;

  // KONSTRUKTOR UTAMA
  Mahasiswa({
    required this.name,
    required this.nim,
    required this.prodi,
    required this.fakultas,
  });

  // KONSTRUKTOR KOSONG
  Mahasiswa.empty()
      : name = '',
        nim = '',
        prodi = '',
        fakultas = '';

  // METHOD UNTUK MENAMPILKAN DATA
  void tampilkanData() {
    print('=== Data Mahasiswa ===');
    print('Nama      : $name');
    print('NIM       : $nim');
    print('Prodi     : $prodi');
    print('Fakultas  : $fakultas');
  }
}
