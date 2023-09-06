void main() {
  List<int> fixed = [];
  final fixedLengthList = List<int>.filled(5, 0); // Creates fixed-length list.
  print(fixedLengthList); // [0, 0, 0, 0, 0]
  //assigning new values to the list
  fixedLengthList[0] = 55;
  fixedLengthList[4] = 34;
  print(fixedLengthList);
  //another function to add new values

  //                    index   0   1   2   3  4
  fixedLengthList.setAll(3, [45, 35, 34, 32, 65]);
  print(fixedLengthList);
}
