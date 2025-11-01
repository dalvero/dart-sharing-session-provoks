void main(List<String> args) {
  // stdout.write("Nama Motor : ");
  // String? namaMotor = stdin.readLineSync()?.trim();
  String namaMotor = "Scorpio z";

  nyalakanMotor(); 
  nyalakanMotorWithParam(namaMotor);
  print(namaMotormuApa(namaMotor));
}

// FUNCTION VOID NON PARAMTER
void nyalakanMotor(){
  print("Sepeda motor sudah menyala!");
}

// FUNCTION VOID WITH PARAMETER
void nyalakanMotorWithParam(String namaMotor){
  print("Sepeda motor $namaMotor menyala!");
}

// FUNCTION RETURN
String namaMotormuApa(String? namaMotor){
  return "Nama Motormu : $namaMotor";
}

// tipeData namaFunction(parameter) {
//   statement/argument
// }