void main() {
  Student student1 = Student('Fils', 20);
  student1.registerCourse('Mobo');
  student1.registerCourse('NetSec');
  print('Student Summary');
  student1.display();
}

mixin NotificationMixin {
  void sendNotification(String studentName, String courseName) {
    print(
        'NOTIFICATION: $studentName has successfully registered for $courseName!');
    print('Registration confirmed. Welcome to the course!');
  }
}

abstract class Registrable {
  void registerCourse(String courseName);
}

class Person {
  String name;
  Person(this.name);
  void introduce() {
    print('Hello, my name is $name');
  }
}

class Student extends Person with NotificationMixin implements Registrable {
  int age;
  Student(String name, this.age) : super(name);
  @override
  void registerCourse(String courseName) {
    sendNotification(name, courseName);
  }
  void display() {
    print('Student: $name, Age: $age');
  }
}