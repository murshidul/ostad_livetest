// Abstract class Role
abstract class Role {
  void displayRole();
}

// Base class Person
class Person implements Role {
  final String name;
  final int age;
  final String address;

  Person({required this.name, required this.age, required this.address});

  // Implementing the displayRole method from Role
  @override
  void displayRole() {
    print("Role: General Person");
  }
}

// Class Student extends Person
class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student({
    required String name,
    required int age,
    required String address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(name: name, age: age, address: address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  // Method to calculate average score
  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    double totalScore = courseScores.reduce((a, b) => a + b);
    return totalScore / courseScores.length;
  }
}

// Class Teacher extends Person
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher({
    required String name,
    required int age,
    required String address,
    required this.teacherID,
    required this.coursesTaught,
  }) : super(name: name, age: age, address: address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }
}

// Class StudentManagementSystem
class StudentManagementSystem {
  void manage() {
    // Create a Student instance
    Student student = Student(
      name: "Alice",
      age: 20,
      address: "123 Maple Street",
      studentID: "S001",
      grade: "A",
      courseScores: [85, 90, 78, 92],
    );

    // Create a Teacher instance
    Teacher teacher = Teacher(
      name: "Mr. John",
      age: 40,
      address: "456 Oak Avenue",
      teacherID: "T001",
      coursesTaught: ["Math", "Physics", "Chemistry"],
    );

    // Display Student details
    print("Student Info:");
    print("Name: ${student.name}");
    print("Age: ${student.age}");
    print("Address: ${student.address}");
    print("Student ID: ${student.studentID}");
    print("Grade: ${student.grade}");
    student.displayRole();
    print("Average Score: ${student.calculateAverageScore()}");

    // Display Teacher details
    print("\nTeacher Info:");
    print("Name: ${teacher.name}");
    print("Age: ${teacher.age}");
    print("Address: ${teacher.address}");
    print("Teacher ID: ${teacher.teacherID}");
    print("Courses Taught: ${teacher.coursesTaught.join(', ')}");
    teacher.displayRole();
  }
}

void main() {
  // Instantiate the StudentManagementSystem
  StudentManagementSystem sms = StudentManagementSystem();
  sms.manage();
}
