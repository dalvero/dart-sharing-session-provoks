import '../materi/employee.dart';
import '../materi/softdev.dart';

void main(List<String> args) {
  // EMPLOYEE
  Employee emp = SoftDev();
  Employee emp2 = Employee();

  // CASTING
  if (emp is SoftDev) {
    SoftDev sd = emp2 as SoftDev;
    emp.work();
  }
}