void main() {
// =========CUSTOM GETTER & SETTER
  var stud1 = Student();
  stud1.name = "Hammad"; // default setter
  stud1.percentage = 869.0;
  print(stud1.name);
  print(stud1._percent); //default getter
}

class Student {
  String? name;
  double _percent = 1;
 

  void set percentage(double securedMarks) => // custom setter
      _percent = (securedMarks / 1100) * 100;

  double get percentage => _percent; //custom getter
}
