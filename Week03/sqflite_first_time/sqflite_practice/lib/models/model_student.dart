class ModelStudent {
  int id;
  String name;

  ModelStudent({required this.id, required this.name});

  /* 
  toMap() It converts a ModelStudent object into a 
  special type of data structure called a "map." A map is like a dictionary or json format data
  with keys and values. In this case, it creates a map with two keys: "id" 
  and "name," and their corresponding values are the id and name of the student
   */

  Map<String, dynamic> toMap() => {"id": id, "name": name};

  /*
    It does the opposite of toMap(). It takes a map as input and creates a new 
    ModelStudent object from it. It extracts the id and name values from the 
    map and uses them to create a new student.
  */

  factory ModelStudent.fromMap(Map<String, dynamic> json) =>
      ModelStudent(id: json['id'], name: json['name']);
}
