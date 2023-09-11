void main() {
  //======DART PRACTICE TODAY===============
  //write a program that prints out all the elements of the list that are less than 5
  var num = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (int i in num) {
    if (i > 5) {
      print("There are numbers that are greater than 5 : $i");
    }
  }
  print([
    for (var i in num)
      if (i < 5) i
  ]);

  /*write a program that returns a list that contains only the elements 
  that are common between them (without duplicates). Make sure your program 
  works on two lists of different sizes. */

  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  var b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  Set<int> res = {};

  for (int i in a) {
    for (int j in b) {
      if (i == j) {
        res.add(i);
      }
    }
  }
  print(res);

  /*Write a Dart code that takes this list and makes a new list that has only 
  the even elements of this list in it. */
  a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  b = [];

  for (int i in a) {
    if (++i % 2 == 0) {
      b.add(i);
    }
  }
  print("the list is now :$b");

  /*makes a new list of only the first and last elements of the given list.
   For practice, write this code inside a function.*/
  a = [5, 10, 15, 20, 25];
  var last = a.last;
  print("the last element is :$last");
  var first = a.first;
  print('the first element is :$first');
  /**/
}
