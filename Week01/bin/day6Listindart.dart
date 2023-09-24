void main() {
  List<int> fixed = [];
  final fixedLengthList = List<int>.filled(5, 0); // Creates fixed-length list.
  print(fixedLengthList); // [0, 0, 0, 0, 0]
  //adding new values
  //                    index   0   1   2   3  4
  fixedLengthList.setAll(0, [45, 35, 34, 32, 65]);
  print(fixedLengthList);

  for (int elements in fixedLengthList) {
    print(elements);
  }

  //Growable list
  List<int> gList = [];
  //add single element at the end of the list
  gList.add(33);
  //add group of elements in list
  gList.addAll([34, 55, 77, 54, 75]);
  print(gList);
  //reversing the order of the list
  var reveredtheOrder = gList.reversed;
  print(reveredtheOrder.toList());
  //lenght of the list
  var lengt = gList.length;
  print("the lenght of the list is : $lengt");
  //the range of the list
  var range = gList.getRange(
    0,
    4,
  );
  print(range);

  //adding value at specific index
  gList[2] = 455;
  print(gList);

  //checkig wether the list is empty or not
  var isEmptyList = gList.isEmpty;
  print('the list is empty : $isEmptyList');

  //creating another growable list
  List<String> districts = [];
  districts.addAll(['Abbotabad', 'Swat', 'Mardan', 'Peshawar', 'Lahore']);
  print(districts);
  //finding the index of specific element
  var indexA = districts.indexOf("Abbotabad");
  print(indexA);
  //removing element from list
  districts.remove('Mardan');
  print(districts);
  //removing lastelement of the list through index number
  districts.removeAt(2);
  print(districts);
  //another growable list of alphabets
  List<String> alphabets = ['A', 'C', 'D', 'E', 'B', 'F', 'G'];
  //SORTING THE LIST
  alphabets.sort();
  print(alphabets);

  Map<String, dynamic> exampleAPi = {
    "data": [
      {
        "type": "articles",
        "id": "1",
        "attributes": {
          "title": "JSON:API paints my bikeshed!",
          "body": "The shortest article. Ever.",
          "created": "2015-05-22T14:56:29.000Z",
          "updated": "2015-05-22T14:56:28.000Z"
        },
        "relationships": {
          "author": {
            "data": {"id": "42", "type": "people"}
          }
        }
      }
    ],
    "included": [
      {
        "type": "people",
        "id": "42",
        "attributes": {"name": "John", "age": 80, "gender": "male"}
      }
    ]
  };
}



