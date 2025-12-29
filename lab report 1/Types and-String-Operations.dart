void main() {
  int age = 25;
  double height = 5.9;
  String firstName = 'Amina';
  String lastName = 'Khan';
  String fullName = firstName + ' ' + lastName;
  String interp = 'Name: $fullName, Age: $age';
  bool isStudent = true;
  var city = 'Dhaka';
  dynamic anything = 42;
  anything = 'now a string';
  print(interp);
  print(isStudent);
  print(anything);
}
