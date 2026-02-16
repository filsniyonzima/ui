void main() {
  Map<String, Student> studentMap = {};
  studentMap['S001'] = Student('Fils', 20);
  studentMap['S002'] = Student('Ikuzu', 22);
  studentMap['S003'] = Student('Mutoni', 21);
  studentMap['S004'] = Student('Kalisa', 23);
  print('=== Student Names ===');
  studentMap.forEach((id, student) {
    print('ID: $id -> Name: ${student.name}');
  });
}

class Student {
  String name;
  int age;
  Student(this.name, this.age);
}