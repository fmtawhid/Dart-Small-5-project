import 'dart:io';

void main() {
  while (true) {
    print('Simple Dart Calculator');
    print('1. Addition');
    print('2. Subtraction');
    print('3. Multiplication');
    print('4. Division');
    print('5. Exit');
    stdout.write('Choose an operation: ');
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('Exiting...');
      break;
    }

    stdout.write('Enter the first number: ');
    double? num1 = double.tryParse(stdin.readLineSync() ?? '');
    if (num1 == null) {
      print('Invalid input. Please enter a valid number.');
      continue;
    }

    stdout.write('Enter the second number: ');
    double? num2 = double.tryParse(stdin.readLineSync() ?? '');
    if (num2 == null) {
      print('Invalid input. Please enter a valid number.');
      continue;
    }

    double result;

    switch (choice) {
      case '1':
        result = num1 + num2;
        print('Result: $num1 + $num2 = $result');
        break;
      case '2':
        result = num1 - num2;
        print('Result: $num1 - $num2 = $result');
        break;
      case '3':
        result = num1 * num2;
        print('Result: $num1 * $num2 = $result');
        break;
      case '4':
        if (num2 == 0) {
          print('Cannot divide by zero.');
        } else {
          result = num1 / num2;
          print('Result: $num1 / $num2 = $result');
        }
        break;
      default:
        print('Invalid choice. Please choose a valid operation.');
    }
    print('');
  }
}
