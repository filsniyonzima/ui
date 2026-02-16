void main() {
  Student student1 = Student('Fils', 20);
  student1.registerCourse('Mobile Communications');
  student1.display();
}

abstract class Registrable {
  void registerCourse(String courseName);
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  
  void introduce() {
    print('Hello, my name is $name!');
  }
}

class Student extends Person implements Registrable {
  String courseName;
  
  Student(String name, int age) : courseName = '' , super(name, age);
  
  @override
  void registerCourse(String courseName) {
    this.courseName = courseName;
  }
  
  void display() {
    print('Student: $name, Age: $age');
    print('Registered for: $courseName');
  }
}