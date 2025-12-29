void main() {
  Student Student1 = Student("Alice", 20, 85);
  Student1.show();
}
 
class Student {
  String name;
  int age;
  int marks;

  Student(this.name, this.age, this.marks);
  void show() {
    print("Name: $name");
    print("Age: $age");
    print("Marks: $marks");
  }
}