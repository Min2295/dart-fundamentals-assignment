//Mintesnot Assefa 

import 'dart:async';

// Custom exception for invalid operations
class InvalidOperationException implements Exception {
  final String message;
  InvalidOperationException(this.message);

  @override
  String toString() => "InvalidOperationException: $message";
}

class Calculator {
  final String name;
  final List<String> history = [];

  Calculator(this.name);

  // Basic operations
  double add(double a, double b) => a + b;

  double subtract(double a, double b) => a - b;

  double multiply(double a, double b) => a * b;

  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError("Cannot divide by zero.");
    }
    return a / b;
  }

  // Async computation with delay
  Future<double> computeAsync(double a, double b, String op) async {
    await Future.delayed(const Duration(milliseconds: 1500));

    switch (op) {
      case "add":
        return add(a, b);
      case "subtract":
        return subtract(a, b);
      case "multiply":
        return multiply(a, b);
      case "divide":
        return divide(a, b);
      default:
        throw InvalidOperationException(
            "Unknown operation: $op (use add, subtract, multiply, divide)");
    }
  }

  // Display result with error handling
  Future<void> displayResult(double a, double b, String op) async {
    try {
      final result = await computeAsync(a, b, op);

      final record =
          "$op(${a.toStringAsFixed(1)}, ${b.toStringAsFixed(1)}) = ${result.toStringAsFixed(2)}";

      print(record);
      history.add(record);
    } catch (e) {
      print("Error: $e");
      history.add("Error during $op($a,$b) : $e");
    }
  }

  // Show calculation history
  void printHistory() {
    print("\n--- Calculation History ---");
    for (var item in history) {
      print(item);
    }
  }

  // Chained calculations (extra feature)
  Future<double> computeChained(List<double> values, String op) async {
    if (values.isEmpty) {
      throw ArgumentError("Values list cannot be empty.");
    }

    double result = values[0];

    for (int i = 1; i < values.length; i++) {
      result = await computeAsync(result, values[i], op);
    }

    return result;
  }

  Future<void> displayChained(List<double> values, String op) async {
    try {
      final result = await computeChained(values, op);
      final record = "$op(${values.join(", ")}) = ${result.toStringAsFixed(2)}";

      print(record);
      history.add(record);
    } catch (e) {
      print("Error: $e");
      history.add("Error during chained operation: $e");
    }
  }
}

Future<void> main() async {
  final calc = Calculator("MyCalculator");

  print("--- ${calc.name} ---");

  // Sequential execution
  print("\n--- Sequential Execution ---");

  await calc.displayResult(10, 4, "add");
  await calc.displayResult(10, 4, "subtract");
  await calc.displayResult(4, 5, "multiply");
  await calc.displayResult(10, 2, "divide");
  await calc.displayResult(10, 0, "divide"); // Error test
  await calc.displayResult(10, 4, "modulus"); // Invalid operation

  // Chained operations
  await calc.displayChained([1, 2, 3, 4], "add");
  await calc.displayChained([2, 3, 4], "multiply");

  // Parallel execution
  print("\n--- Parallel Execution ---");

  await Future.wait([
    calc.displayResult(40, 34, "add"),
    calc.displayResult(17, 10, "subtract"),
    calc.displayResult(10, 8, "multiply"),
  ]);

  print("\nAll calculations complete.");

  calc.printHistory();
}