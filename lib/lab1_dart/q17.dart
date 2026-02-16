void main() async {
  print('we will wait for 2secs');
  List<Student> students = await loadStudents();
  print('Number of students loaded: ${students.length}');
}

Future<List<Student>> loadStudents() async {
  await Future.delayed(Duration(seconds: 2));
  return [
    Student('Fils', 20),
    Student('Ikuzza', 21),
    Student('Mutoni', 22),
    Student('Kalisa', 23),
  ];
}

class Student {
  String name;
  int age;

  Student(this.name, this.age);
}