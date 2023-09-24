void main() {
  var car1 = Car("toyota", 2000);

  print(car1.carName);
  print(car1.model);
  car1.highSpeed();
  car1.start();
  car1.stop();
}

class Car {
  int model = 2002;
  String carName = "Toyota";
// parametrized constructor
  Car(this.carName, this.model);

  // Named constructor
  Car.myConstructor(this.carName, this.model);

  void start() {
    print("$carName engine is started");
  }

  void stop() {
    print("$carName is stopped");
  }

  void highSpeed() {
    print("$carName is at high speed of 180 kmph");
  }
}
