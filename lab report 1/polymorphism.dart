class Shape {
  void draw() {
    print("Drawing Shape");
  }
}
class Circle extends Shape {
  @override
  void draw() {
    print("Drawing Circle");
  }
}
class Square extends Shape {
  @override
  void draw() {
    print("Drawing Square");
  }
}
void main() {
  Shape shape;
  shape = Circle();
  shape.draw();

  shape = Square();
  shape.draw();
}
