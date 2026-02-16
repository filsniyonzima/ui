void main() async {
  print('Loading students');
  List<Student> students = await loadStudents();
  print('Students are loaded now!');
  for (Student student in students) {
    print('• ${student.name}, Age: ${student.age}');
  }
}

Future<List<Student>> loadStudents() async {
  await Future.delayed(Duration(seconds: 2));
  return [
    Student('Fils', 20),
    Student('Ikuza', 22),
    Student('Mutoni', 21),
    Student('Kalisa', 23),
  ];
}

class Student {
  String name;
  int age;
  Student(this.name, this.age);
}