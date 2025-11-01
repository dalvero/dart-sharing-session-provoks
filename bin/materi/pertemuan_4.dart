// PENGKODISIAN

void main(List<String> args) {
  int nilai = 20;

  // IF ELSE //  
  if (nilai >= 90) {
    print("A");
  } else if (nilai >= 80) {
    print("B");
  } else {
    print("C");
  }


  // BENTUK DASAR
  // if (kondisi) {
  //   // KODE DIJALANKAN JIKA SESUAI KONDISI
  // }

  // CONTOH
  int umur = 20;
  if (umur >= 18) {
    print("Dewasa");
  }

  // SWITCH CASE
  String hari = "Senin";
  switch (hari) {
    case "Senin":
      print("Awal minggu");
      break;
    case "Jumat":
      print("Menjelang akhir minggu");
      break;
    default:
      print("Hari biasa");
  }

  int ipk = 4;
  switch (ipk) {
    case 4:
      print("Summa Cum Laude");
      break;
    case 3:
      print("Cum Laude");
    case 2:
      print("Magna Laude");
    default:
      print("IPK Tidak Terdaftar");
  }
}