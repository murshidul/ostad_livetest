import 'dart:io';

void main() {
  triangle();
}

void triangle() {
  // Prompt the user to enter the base of the triangle
  stdout.write("Enter the base of the triangle: ");
  double? base = double.tryParse(stdin.readLineSync() ?? '');

  // Prompt the user to enter the height of the triangle
  stdout.write("Enter the height of the triangle: ");
  double? height = double.tryParse(stdin.readLineSync() ?? '');

  // Check if the inputs are valid numbers
  if (base != null && height != null) {
    // Calculate the area of the triangle
    double area = 0.5 * base * height;
    print("The area of the triangle is: $area");
  } else {
    print("Invalid input. Please enter valid numbers for base and height.");
  }
}
