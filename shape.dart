import 'circle.dart';
import 'rectangle.dart';
import 'square.dart';

abstract class Shape {
  String _color;
  bool _filled;

  Shape()
      : _color = 'red',
        _filled = true;

  Shape.withColorFilled(this._color, this._filled);

  String get color => _color;
  set color(String color) {
    _color = color;
  }

  bool get filled => _filled;
  set filled(bool filled) {
    _filled = filled;
  }

  double getArea();
  double getPerimeter();

  @override
  String toString() => 'Shape[color=$color,filled=$filled]';
}

void main() {
  List<Shape> shapeList = [
    Circle(),
    Circle.withRadius(2),
    Rectangle.withLengthWidth(2, 3),
    Square.withSide(4),
  ];

  for (var shape in shapeList) {
    print('$shape, área: ${shape.getArea()}');
  }
}
