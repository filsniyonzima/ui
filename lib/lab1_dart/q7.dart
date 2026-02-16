void main() {
  Student student1 = Student('Fils', 20);
  student1.introduce();
}

class Person {
  String name;

  Person(this.name);

  void introduce() {
    print('Hello, my inherited name is $name');
  }
}

class Student extends Person {
  int age;

  Student(String name, this.age) : super(name);

  void display() {
    print('Student: $name, Age: $age');
  }
}