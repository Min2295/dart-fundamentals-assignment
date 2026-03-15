final numbers = <int>[34, -7, 89, 12, -45, 67, 3, 100, -2, 55];

// Find maximum value
int findMax(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List cannot be empty");
  }

  int runningMaximum = numbers[0];

  for (var number in numbers) {
    if (number > runningMaximum) {
      runningMaximum = number;
    }
  }

  return runningMaximum;
}

// Find minimum value
int findMin(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List cannot be empty");
  }

  int minNumber = numbers[0];

  for (var number in numbers) {
    if (number < minNumber) {
      minNumber = number;
    }
  }

  return minNumber;
}

// Calculate total sum
int calculateSum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List cannot be empty");
  }

  int totalValue = 0;

  for (var number in numbers) {
    totalValue += number;
  }

  return totalValue;
}

// Calculate average
double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List cannot be empty");
  }

  int total = calculateSum(numbers);
  return total / numbers.length;
}

// Count negative numbers
int countNegatives(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List cannot be empty");
  }

  int negativeCount = 0;

  for (var number in numbers) {
    if (number < 0) {
      negativeCount++;
    }
  }

  return negativeCount;
}

// Bubble sort (without modifying original list)
List<int> sortAscending(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List cannot be empty");
  }

  List<int> sortedList = List.from(numbers);

  for (var i = 0; i < sortedList.length - 1; i++) {
    for (var j = 0; j < sortedList.length - i - 1; j++) {
      if (sortedList[j] > sortedList[j + 1]) {
        int temp = sortedList[j];
        sortedList[j] = sortedList[j + 1];
        sortedList[j + 1] = temp;
      }
    }
  }

  return sortedList;
}

void main() {
  try {
    int max = findMax(numbers);
    int min = findMin(numbers);
    int sum = calculateSum(numbers);
    double avg = calculateAverage(numbers);
    int negatives = countNegatives(numbers);
    List<int> sortedNumbers = sortAscending(numbers);

    // Built-in Dart methods
    int maxByReduce = numbers.reduce((a, b) => a > b ? a : b);
    int minByReduce = numbers.reduce((a, b) => a < b ? a : b);
    int sumByFold = numbers.fold(0, (acc, n) => acc + n);
    int negativeByWhere = numbers.where((n) => n < 0).length;

    print("Number Analysis Results");
    print("========================");
    print("Original Numbers : $numbers");
    print("Maximum Value    : $max");
    print("Minimum Value    : $min");
    print("Sum              : $sum");
    print("Average          : $avg");
    print("Negative Count   : $negatives");
    print("Sorted Numbers   : $sortedNumbers");

    print("\nUsing Dart Built-in Methods");
    print("----------------------------");
    print("Maximum by reduce : $maxByReduce");
    print("Minimum by reduce : $minByReduce");
    print("Sum by fold       : $sumByFold");
    print("Negative by where : $negativeByWhere");
  } catch (e) {
    print("Error: $e");
  }
}
