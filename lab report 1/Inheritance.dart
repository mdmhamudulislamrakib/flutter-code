class Animal {
  void sound() {
    print("Animals make sound");
  }
}

class Dog extends Animal {
  void sound() {
    print("Dog Barks");
  }
}

void main() {
  Dog d = Dog();
  d.sound();
}
