void main() {
  //Inheritance in Dart
  var dog = Dog("Labrodor");
  dog.breed = "German Sheferd";
  print("The breed of the dog is ${dog.breed}");
  dog.color = "Grey";
  print("The color of the dog is ${dog.color}");

  dog.bark();
  print('');
  var cat = Cat();
  cat.age = 3;
  print("The age of the cat is ${cat.age}");
  cat.color = "White";
  print("The color of the cat is ${cat.color}");
  cat.meow();

  //=======Method Overriding in Dart=========
  print("the overrided method of dog is now below!");
  dog.eat();
}

//Parent Class
class Animal {
  String color = "";
  void eat() {
    print("Eat!");
  }

  //default constructor
  Animal(String color) {
    print("Defalut Constructor Animal");
  }
}

//========Child Class==========
class Dog extends Animal {
  String breed = "";

  void bark() {
    print("Bark!");
  }

  //Overrided Method eat()
  void eat() {
    print("The dog is eating!");
  }

  Dog(String breed) : super("Brown") {
    print("Default Constructor Dog");
  }
}

//========Child Class===========
class Cat extends Animal {
  //overrided property
  String color = "White";
  int age = 1;
  void meow() {
    print("meow!");
  }

  //default constructor
  Cat() : super("Grey") {
    print("default constructor cat");
  }
}
