void main() {
  //CALLING HIGH ORDER FTN
  var myFunc = taskToPerform();
  print(myFunc(20));
  //calling other function
  //creating funtion for paramter
  Function addNum = (a, b) => print(a + b);
  someOtherFunction("Hello!", addNum);

  //calling the operate function
  int result1 = operate(23, 44, sum); // Pass 'add' function
  int result2 = operate(55, 35, subtract);
  print("the sum of of a ,b: $result1");
  print("the subtraction of a and b is: $result2");
}

//======HIGHER ORDER FUNCTION==========
//TAKE A FUNCTION AS PARAMETER
void someOtherFunction(String message, Function myFunction) {
  print(message);
  myFunction(3, 9);
}

//=========HIGHER ORDER FUNCTION============
//FUNCTION AS RETURN STATEMENT
Function taskToPerform() {
  Function multiplyByFour = (int num) => num * 4;
  print(multiplyByFour);
  return multiplyByFour;
}

//practice
int operate(a, b, Function(int, int) operation) {
  return operation(a, b);
}

//summation
int sum(a, b) => a + b;
//subtraction
int subtract(a, b) => a - b;
