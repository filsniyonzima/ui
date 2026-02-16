void main() {
  Student student1 = Student('Alice', 20);
  Student student2 = Student('Fils', 22);
  student1.display();
  student2.display();
}

class Student {
  String name;
  int age;
  Student(this.name, this.age);
  display() {
    print('Student: $name, Age: $age');
  }
}