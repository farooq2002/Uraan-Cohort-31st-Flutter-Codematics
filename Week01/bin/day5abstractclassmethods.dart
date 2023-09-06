void main() {
  var circle1 = Circle();
  circle1.draw();
  circle1.shapeColor();
  var rect = Rectangle();
  rect.draw();
  rect.shapeColor();
}

//========abstract class========
abstract class Shape {
  int x = 1;
  int y = 1;
// =====abstract method========
  void draw();
  void shapeColor() {
    print("The color of the shape  will be black");
  }
}

class Circle extends Shape {
  //abstract method overriding
  void draw() {
    print("Draw a Circle  ...");
  }
}

class Rectangle extends Shape {
  void draw() {
    print("Draw a Rectangle");
  }

  // abstract class normal method overriding==========
  void shapeColor() {
    print("The color of the rectanglw will be red");
  }
}
