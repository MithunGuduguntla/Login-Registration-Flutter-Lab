void main() {
  // 1. Variables and Data Types
  String name = "Sai";
  int age = 20;
  double percentage = 85.5;
  bool isStudent = true;

  print("Name: $name");
  print("Age: $age");
  print("Percentage: $percentage");
  print("Student: $isStudent");

  // 2. Arithmetic Operators
  int a = 20;
  int b = 10;

  print("Addition: ${a + b}");
  print("Subtraction: ${a - b}");
  print("Multiplication: ${a * b}");
  print("Division: ${a / b}");

  // 3. If-Else
  if (percentage >= 40) {
    print("Result: Pass");
  } else {
    print("Result: Fail");
  }

  // 4. For Loop
  print("Numbers from 1 to 5:");

  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  // 5. List
  List<String> subjects = [
    "Flutter",
    "Java",
    "Python",
    "Database"
  ];

  print("Subjects:");
  for (String subject in subjects) {
    print(subject);
  }

  // 6. Function
  int result = addNumbers(10, 20);
  print("Function Result: $result");
}

// Function
int addNumbers(int x, int y) {
  return x + y;
}