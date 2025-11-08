class Mahasiswa {
  String nama;
  int umur;

  Mahasiswa(this.nama, this.umur);

  void info() => print("Nama: $nama, Umur: $umur");
}

void main() {
  var m = Mahasiswa("Daniel", 20);
  m.info();
}
