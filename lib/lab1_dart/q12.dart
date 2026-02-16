void main() {
  List<Student> students = [];
  students.add(Student('Alice', 20));
  students.add(Student('Bob', 22));
  students.add(Student('Charlie', 19));
  
  print('=== Student List ===');
  for (int i = 0; i < students.length; i++) {
    print('${i + 1}. ${students[i].name}, Age: ${students[i].age}');
  }
  
  print('Using for-in loop');
  for (Student student in students) {
    print('Student: ${student.name}, Age: ${student.age}');
  }
}

class Student {
  String name;
  int age;
  Student(this.name, this.age);
}