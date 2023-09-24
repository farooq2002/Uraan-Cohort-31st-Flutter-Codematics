class NotesModel {
  final int? id;
  final String? title;
  final int age;
  final String description;
  final String email;

  NotesModel(
      {this.id,
      required this.title,
      required this.age,
      required this.description,
      required this.email});

  factory NotesModel.fromMap(Map<String, dynamic> json) => NotesModel(
      id: json['id'],
      title: json['name'],
      age: json['age'],
      description: json['description'],
      email: json['email']);

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'age': age,
        'description': description,
        'email': email,
      };
}
