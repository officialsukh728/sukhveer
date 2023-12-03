class _Student {
  int age = 19;

  void agePrint() {
    print("age =$age");
  }

  int roomNumber = 10;

  void roomPrint() {
    print("Room Number =$roomNumber");
  }

  int rollNumber = 45;

  void rollPrint() {
    print("Roll Number =$rollNumber");
  }

  String name = "sukh";

  void namePrint() {
    print("Name =$name");
  }

  String fathername = " jagjeet";

  void fatherName() {
    print("Father Name =$fathername");
  }

  String matherName = "manjeet kaur";

  void mathername() => print("Mather Name=$matherName");
  String schoolName = "GHS";

  void schoolNamePrint() => print("School Name=$schoolName");
  double punjabiMarks = 80;

  void punjabiMarksPrint() => print("Punjabi Marks =$punjabiMarks");
  double hindiMarks = 70;

  void hindiMarksprint() => print("Hindi Marks =$hindiMarks");
  double socialMarks = 40;

  void socialMarksPrint() => print("Social Marks=$socialMarks");

  double mathMarks = 60;

  void mathMarksPrint() => print("Math Marks=$mathMarks");
  double engMarks = 65;

  void engMarksPrint() => print("Eng Marks =$engMarks");

  double sstMarks = 41;

  void sstMarksPrint() => print(" SST Marks =$sstMarks");
}

void main() {
  _Student student = _Student();
  student.namePrint();
  student.sstMarksPrint();
  student.mathername();
  student.fatherName();
  student.schoolNamePrint();
  student.hindiMarksprint();


}
