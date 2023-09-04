void main() {
  //==========CONTINUE KEYWORD===========
  for (int h = 0; h < 10; h++) {
    if (h == 5) {
      continue;
    }
    print(h);
  }
  //------------printing odd numbers------------
  for (int f = 0; f < 10; f++) {
    if (f % 2 == 0) {
      continue;
    }
    print("the odd numbers b/w 0-10 is $f");
  }

  //-=-=-=-=--=-another example of continue----------
  outerLopp:
  for (int n = 0; n <= 5; n++) {
    for (int m = 0; m <= 5; m++) {
      if (n == 3 && m == 3) {
        continue outerLopp;
      }
      print("$n $m");
    }

    printCities("Karachi", 'Swat');
    print("");
    printCountries("Pakistan", "Dubai", "Italy");
  }

  //========FUNCTION calling ===================
  findPerimeter(3, 7);

  // area function
  int RecArea = area(5, 8);
  print("the area of rectangle is $RecArea");
}

// function definition
void findPerimeter(int length, int breadth) =>
    print("the perimeter is ${2 * (length * breadth)}");
// =====FAT ARROW FUNCTION OR SINGLE EXPRESSION METHOD========
int area(int lenght, int breadth) => lenght * breadth;
// REQUIRED PARAMETER=====
void printCities(String city1, String city2, {String? city3}) {
  print("Name of the city is $city1");
  print("Name of the city is $city2");
  print("Name of the city is $city3");
}

// ======OPTIONAL PARAMETER=======
void printCountries(String c1, String c2, String c3) {
  print("Name of country 1 is $c1");
  print("Name of country 1 is $c2");
  print("Name of country 1 is $c3");
}
