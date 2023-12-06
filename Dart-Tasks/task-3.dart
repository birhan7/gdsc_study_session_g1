import 'dart:async';
import 'dart:io';
class Calculator {
  Future<int> add(int a, int b) async {
    await Future.delayed(Duration(seconds: 5));
    return a + b;
  }

  Future<int> subtract(int a, int b) async {
    await Future.delayed(Duration(seconds: 5));
    return a - b;
  }

  Future<int> multiply(int a, int b) async {
    await Future.delayed(Duration(seconds: 5));
    return a * b;
  }

  Future<double> divide(int a, int b) async {
    await Future.delayed(Duration(seconds: 5));
    if (b == 0) {
      throw DivisionByZeroException("Division by zero is not allowed!");
    }
    return a / b;
  }
}

class DivisionByZeroException implements Exception {
  final String message;

  DivisionByZeroException(this.message);
}

void main() async {
  final calculator = Calculator();

  // User input
  print("Enter first number:");
  int firstNumber = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int secondNumber = int.parse(stdin.readLineSync()!);

  // Choose operation
  print("Select operation:");
  print("1. Add");
  print("2. Subtract");
  print("3. Multiply");
  print("4. Divide");
  int operation = int.parse(stdin.readLineSync()!);

  try {
    switch (operation) {
      case 1:
        int sum = await calculator.add(firstNumber, secondNumber);
        print("Sum: $sum");
        break;
      case 2:
        int difference = await calculator.subtract(firstNumber, secondNumber);
        print("Difference: $difference");
        break;
      case 3:
        int product = await calculator.multiply(firstNumber, secondNumber);
        print("Product: $product");
        break;
      case 4:
        double quotient = await calculator.divide(firstNumber, secondNumber);
        print("Quotient: $quotient");
        break;
      default:
        print("Invalid operation.");
    }
  } on DivisionByZeroException catch (e) {
    print(e.message);
  } 
}
