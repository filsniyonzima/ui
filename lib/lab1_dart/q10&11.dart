void main() {
  Student student1 = Student('Alice', 20);
  student1.markAttendance();
  student1.markAttendance();
  student1.markAttendance();
  student1.display();
}

mixin AttendanceMixin {
  int attendanceCount = 0;

  void markAttendance() {
    attendanceCount++;
    print('Attendance marked!: $attendanceCount');
  }

  int getAttendanceCount() {
    return attendanceCount;
  }
}

class Person {
  String name;
  Person(this.name);

  void introduce() {
    print('Hello, my name is $name');
  }
}

class Student extends Person with AttendanceMixin {
  int age;

  Student(String name, this.age) : super(name);

  void display() {
    print('Student: $name, Age: $age, Attendance: $attendanceCount');
  }
}