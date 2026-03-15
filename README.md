# Dart Fundamentals Assignment

This repository contains solutions for two programming tasks implemented using the Dart programming language. The goal of the assignment is to demonstrate understanding of Dart fundamentals including collections, functions, object-oriented programming, and asynchronous programming.

The project is divided into two main tasks:

- **Task 1 – Number Analysis Program**
- **Task 2 – Asynchronous Calculator Application**

---

# Task 1 – Number Analysis Program

## Description

The Number Analysis program processes a list of integers and performs several analytical operations on the data. The program demonstrates how loops, functions, and Dart collection methods can be used to analyze numerical data.

The program works with a predefined list of integers and calculates several statistical values from the list.

## Features

The program performs the following operations:

- Finds the **maximum value** in the list
- Finds the **minimum value** in the list
- Calculates the **sum** of all numbers
- Calculates the **average** of the numbers
- Counts the **number of negative values**
- Sorts the numbers in **ascending order using Bubble Sort**

The program also demonstrates how the same operations can be performed using **built-in Dart collection methods** such as:

- `reduce()` for maximum and minimum
- `fold()` for summation
- `where()` for filtering values

This comparison helps illustrate the difference between **manual algorithm implementation** and **built-in functional programming methods in Dart**.

## Implementation Approach

The program is implemented using several functions where each function is responsible for a specific task:

- `findMax()` – determines the largest number
- `findMin()` – determines the smallest number
- `calculateSum()` – computes the total sum
- `calculateAverage()` – calculates the average value
- `countNegatives()` – counts negative numbers
- `sortAscending()` – sorts the list using Bubble Sort

The program also includes **error handling** to check whether the list is empty before performing calculations.

---

# Task 2 – Asynchronous Calculator Application

## Description

The Asynchronous Calculator application demonstrates the use of **object-oriented programming and asynchronous programming in Dart**. The calculator performs basic arithmetic operations and simulates asynchronous processing using `Future`, `async`, and `await`.

This task highlights how asynchronous operations are commonly used in real applications such as API calls, database access, and network requests.

## Features

The calculator application supports the following operations:

- Addition
- Subtraction
- Multiplication
- Division

Additional features include:

- **Error handling** for invalid operations
- **Division by zero protection**
- **Asynchronous computation using Future**
- **Artificial delay to simulate long operations**
- **Sequential execution of operations**
- **Parallel execution using `Future.wait()`**
- **Calculation history tracking**

The calculator also supports **chained calculations**, where multiple numbers can be processed using the same operation.

## Implementation Approach

The application is implemented using a `Calculator` class that contains several methods:

- `add()` – performs addition
- `subtract()` – performs subtraction
- `multiply()` – performs multiplication
- `divide()` – performs division with error checking
- `computeAsync()` – executes operations asynchronously
- `displayResult()` – prints formatted results
- `computeChained()` – performs chained calculations
- `printHistory()` – displays previous calculations

A custom exception class called `InvalidOperationException` is used to handle invalid operation types.

The `main()` function demonstrates both **sequential** and **parallel execution** of asynchronous tasks.

---

# Technologies Used

The project is implemented using:

- **Dart Programming Language**
- Dart collections and control structures
- Object-Oriented Programming
- Asynchronous Programming (`Future`, `async`, `await`)

---

# How to Run the Program

## 1. Install Dart

Ensure that Dart is installed on your system.

You can download Dart from the official website:

https://dart.dev/get-dart

Verify installation: dart --version


---

## 2. Clone the Repository
https://github.com/Min2295/dart-fundamentals-assignment.git


Navigate to the project directory:
    cd dart-fundamentals-assignment


---

## 3. Run Task 1

To run the Number Analysis program:
        dart number_analysis.dart

The program will display results including maximum value, minimum value, sum, average, negative count, and sorted numbers.

---

## 4. Run Task 2

To run the Asynchronous Calculator application:
    dart async_calculator.dart

The program will demonstrate sequential and parallel calculator operations and display the calculation history.

---

# Learning Outcomes

This assignment demonstrates several important programming concepts including:

- Working with **lists and collections**
- Writing **modular functions**
- Implementing **sorting algorithms**
- Applying **object-oriented programming**
- Using **asynchronous programming in Dart**
- Implementing **error handling and exceptions**

---

# Author

Mintesnot Assefa=ATE/1203/16
