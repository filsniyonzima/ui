void main() {
  List<Student> students = [
    Student('Fils', 20),
    Student('Ikuzza', 21),
    Student('Mutoni', 22),
    Student('Kalisa', 23),
  ];

  students.forEach((Student student) {
    print('Student Names Anonymously are: ${student.name}');
  });
}

class Student {
  String name;
  int age;

  Student(this.name, this.age);
}