void main() {
 
  createStudent(name: 'Alice', age: 20);
  createStudent(name: 'Bob', age: 22);
}
void createStudent({required String name, required int age}) {
  print('Student: $name, Age: $age');
}