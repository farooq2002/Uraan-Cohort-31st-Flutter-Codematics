import 'package:test/test.dart';

void main() {
  //==========Maps in dart==========
  Map<String, dynamic> Students = {
    "Ahmad": 'Web developer',
    "Farooq": 'Android developer',
    "Waqar": 'Ai developer',
    "Iqra": 'Graphics designer',
    "Amir": 'Business man',
    "Zakarya": 'CEO',
  };

  Students.forEach((key, value) => print("Key : $key - Value : $value"));

  //adding new values to the map
  Students['Ihsan'] = "UK";
  print(Students);

  //deleting a value from the list
  Students.remove('Amir');
  print(Students);
  //lenght of the map
  var lenghtOfMap = Students.length;
  print('there are $lenghtOfMap object in the map');
  // containes
  var isX = Students.containsKey('Zakarya');
  print(isX);
  //updating a value in a object by key
  Students.update('Ihsan', (value) => 'Azan');
  print(Students);
}
