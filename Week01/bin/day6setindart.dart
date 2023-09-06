void main() {
  //=============SET IN DART==================
  Set<String> mySet = Set();

  mySet.addAll(['matta', 'kalam', 'mingora', 'charbagh']);
  print(mySet);
  print('\n');
  //=======another way to print============
  for (String cities in mySet) {
    print(cities);
  }
  //===========using lambda expression==============
  print('\n');
  mySet.forEach((element) {
    print('for each loop print is $element');
  });
//================clearing the list=============
  mySet.clear();
  print('Is my list is empty now :${mySet.isEmpty}');

  //==========Another example on set=================

  Set<double> studentGpa = Set();
  studentGpa.addAll([3.42, 3.12, 3.0, 2.9, 4.0]);
  print(studentGpa);
  print('\n');
  //=================finding an element exits or not==================
  if (studentGpa.contains(3.42)) {
    print('the gpa 3.42 existed in the Set');
  } else {
    print('the given gpa of the student is not in the Set');
  }
  //=====================
  print('\n');
  if (studentGpa.contains(3.49)) {
    print('the gpa 3.42 existed in the Set');
  } else {
    print('the given gpa of the student is not in the Set');
  }

  //=========remove an element from the set=================
  studentGpa.remove(3.42);
  print('The 3.42 is removed from the set and now set contains :$studentGpa');
  //=======Checking Set is empty or not=======
  if (studentGpa.isEmpty == false) {
    print('The set is Contains some elements.');
  } else {
    print('the set is empty!');
  }
  //==========Lenght of the set=======
  var lenghtOfSet = studentGpa.length;
  print("The lenght of the set is :$lenghtOfSet");
  //clearing the set
  var clearedSet = studentGpa.clear();
  print('the set is now cleared : $studentGpa');
}
