// Abstract class Role
abstract class Role {
  void displayRole();
}

// Base class Person
class Person implements Role {
  // Attributes
  final String name;
  final int age;
  final String address;

  // Constructor
  Person({required this.name, required this.age, required this.address});

  // Getter methods
  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  // Implement the displayRole() method from Role
  @override
  void displayRole() {
    print("Role: General Person");
  }
}

// Class Student extends Person
class Student extends Person {
  // Additional attributes
  final String studentID;
  final String grade;
  final List<double> courseScores;

  // Constructor
  Student({
    required String name,
    required int age,
    required String address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(name: name, age: age, address: address);

  // Override displayRole method
  @override
  void displayRole() {
    print("Role: Student");
  }

  // Method to calculate the average score
  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    double totalScore = courseScores.reduce((a, b) => a + b);
    return totalScore / courseScores.length;
  }
}

// Class Teacher extends Person
class Teacher extends Person {
  // Additional attributes
  final String teacherID;
  final List<String> coursesTaught;

  // Constructor
  Teacher({
    required String name,
    required int age,
    required String address,
    required this.teacherID,
    required this.coursesTaught,
  }) : super(name: name, age: age, address: address);

  // Override displayRole method
  @override
  void displayRole() {
    print("Role: Teacher");
  }
}

// Main function
void main() {
  // Create a Student object
  Student student = Student(
    name: "Alice",
    age: 20,
    address: "123 Maple Street",
    studentID: "S001",
    grade: "A",
    courseScores: [85, 90, 78, 92],
  );
  print("Student Info:");
  print("Name: ${student.getName}");
  print("Age: ${student.getAge}");
  print("Address: ${student.getAddress}");
  print("Student ID: ${student.studentID}");
  print("Grade: ${student.grade}");
  student.displayRole();
  print("Average Score: ${student.calculateAverageScore()}");

  // Create a Teacher object
  Teacher teacher = Teacher(
    name: "Mr. John",
    age: 40,
    address: "456 Oak Avenue",
    teacherID: "T001",
    coursesTaught: ["Math", "Physics", "Chemistry"],
  );
  print("\nTeacher Info:");
  print("Name: ${teacher.getName}");
  print("Age: ${teacher.getAge}");
  print("Address: ${teacher.getAddress}");
  print("Teacher ID: ${teacher.teacherID}");
  print("Courses Taught: ${teacher.coursesTaught.join(', ')}");
  teacher.displayRole();
}
