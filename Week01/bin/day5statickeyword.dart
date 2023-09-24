void main() {
  //using static  keyword

  var circle1 = Circle();
  print(Circle.pi);
  print(circle1.color);
}

class Circle {
  String color = "Black";
  //static variable and const as well
  static const double pi = 3.14;

// static method
  static void calculateArea() {
    print("calculate the area of the circle");
  }

  //normal method
  void circumferece() {
    calculateArea();
    this.color;
  }
}
