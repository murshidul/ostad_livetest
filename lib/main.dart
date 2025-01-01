// Abstract class Role
abstract class Role {
  void displayRole();
}

// Class Person
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

// Class Student extends Person and implements Role
class Student extends Person {
  Student({required String name, required int age, required String address})
      : super(name: name, age: age, address: address);

  @override
  void displayRole() {
    print("Role: Student");
  }
}

// Class Teacher extends Person and implements Role
class Teacher extends Person {
  Teacher({required String name, required int age, required String address})
      : super(name: name, age: age, address: address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }
}

// Main function
void main() {
  // Create a Student object
  Person student = Student(name: "Alice", age: 20, address: "123 Maple Street");
  print("Name: ${student.getName}");
  print("Age: ${student.getAge}");
  print("Address: ${student.getAddress}");
  student.displayRole();

  // Create a Teacher object
  Person teacher = Teacher(name: "Mr. John", age: 40, address: "456 Oak Avenue");
  print("\nName: ${teacher.getName}");
  print("Age: ${teacher.getAge}");
  print("Address: ${teacher.getAddress}");
  teacher.displayRole();
}
