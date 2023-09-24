void main() {
  //=========OOP CLASSES : OBJECTS/instances : FUNCTIONS/methods ========
  //instance of student class
  var student1 = Student();
  student1.age = 22;
  student1.name = "Messi";
  print(student1.name);
  print(student1.age);
  student1.sleep();
  student1.study();
  //another instance
  print("");
  var student2 = Student();
  student2.age = 17;
  student2.name = "Mohsin";
  print(student2.name);
  print(student2.age);
  student2.sleep();
}

class Student {
  int age = 1;
  String name = "";

  void sleep() {
    print("$name is now sleeping");
  }

  void study() {
    print("$name is now studying");
  }
}
