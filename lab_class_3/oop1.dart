void main() {
  Person person = Person('Bob', true, 25);
  person.display();
}
 
 class Person {
  String name;
  bool male;
  int age;

  Person (this.name, this.male, this.age);
  void display() {
    print('Name: $name male: $male, Age: $age');
  }
 }