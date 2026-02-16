void main() {
  Person person1 = Person('Fils');
  person1.introduce();
}

class Person {
  String name;
  Person(this.name);
  
  void introduce() {
    print('Hello, my name is $name!');
  }
}