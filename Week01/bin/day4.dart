import 'dart:math';

void main() {
// =================DAY 4===================
//=================NAMED PARAMTER===========
  int finalValue = findVolume(20, breadth: 10, height: 10);
  print(finalValue);
  int val = addition(3);
  //=======the default value for b is already defined========
  print('the addition is : $val');

  //==========EXCEPTION HANDLING============
  //CASE :1 :TRY CATCH
  try {
    int result = 22 ~/ 0;
    print(result);
  } catch (e) {
    print("the exception is : $e");
  }
  //case :2 : try on handling
  try {
    int result = 12 ~/ 0;
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print("Cannot be divide by zero!");
  }
// case :3 : try catch finally
  try {
    int result = 22 ~/ 2;
    print(result);
  } catch (e) {
    print("the exception is : $e");
  } finally {
    print("Thnak you");
  }

  // case:4 try catch with stacktrace
  try {
    int result = 22 ~/ 0;
    print(result);
  } catch (e, stackTrace) {
    print("the exception is : $e");
    print('');
    // print("THE STACKTRACE IS : $stackTrace");
  }

  //============CASE :5 : CUSTOM EXCEPTION HANDLER==========

  try {
    depositMoney(-130);
  } catch (e) {
    print("You can enter amount less than 0");
  }
}

//named paramter function
int findVolume(int lenght, {int? breadth, int? height}) {
  return lenght * breadth! * height!;
}

//default paramter

int addition(int a, {int b = 2}) {
  return a + b;
}

class DepositException implements Exception {
  String errorMessage() {
    return "You can enter amount less than 0";
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    throw DepositException();
  }
}
