import 'dart:io';

/*
  * stdio.write : Both print and stdio.write() function help us to write something in
    console, but in print cursor moves to the next line. In stdio.write(), it stays in
    same line.

  * stdio.readLineSync() : you can take standard input from the user through the
   console via the use of .readLineSync() function.

  * Both functions come from dart:io package of dart
 */

void main(List<String> arguments) {
  stdout.write('First number : ');
  var firstNumber = stdin.readLineSync(); // take inputs as String format
  stdout.write('First second : ');
  var secondNumber = stdin.readLineSync();
  stdout.write('For\naddition press(+), subtraction press(-), multiplication press(*), division press(/) : ');
  var operation = stdin.readLineSync();

  var result = 0.0;

  if (operation == '+') {

    // Trying to parse string to double and if not success then we are using
    // default value
    result = (double.tryParse(firstNumber ?? '0') ?? 0) +
        (double.tryParse(secondNumber ?? '0') ?? 0);
  } else if (operation == '-') {
    result = (double.tryParse(firstNumber ?? '0') ?? 0) -
        (double.tryParse(secondNumber ?? '0') ?? 0);
  } else if (operation == '*') {
    result = (double.tryParse(firstNumber ?? '0') ?? 0) *
        (double.tryParse(secondNumber ?? '0') ?? 0);
  } else if (operation == '/') {
    result = (double.tryParse(firstNumber ?? '0') ?? 0) /
        (double.tryParse(secondNumber ?? '0') ?? 0);
  } else {
    print('Enter a valid operation sign');
  }

  // printing the result
  print('Result is $result');
}
