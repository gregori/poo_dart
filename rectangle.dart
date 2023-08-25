import 'shape.dart';

class Rectangle extends Shape {
  double _length;
  double _width;

  Rectangle()
      : _length = 1.0,
        _width = 1.0;

  Rectangle.withLengthWidth(this._length, this._width);
  Rectangle.withLengthWidthColorFilled(
    this._length,
    this._width,
    String color,
    bool filled,
  ) : super.withColorFilled(color, filled);

  double get length => _length;
  set length(double length) {
    _length = length;
  }

  double get width => _width;
  set width(double width) {
    _width = width;
  }

  double getArea() => length * width;
  double getPerimeter() => 2 * (length + width);

  @override
  String toString() =>
      'Rectangle[${super.toString()},length=$length,width=$width]';
}

void main() {
  var r1 = Rectangle();
  var r2 = Rectangle.withLengthWidth(3, 4);

  print('$r1, área: ${r1.getArea()}, perímetro: ${r1.getPerimeter()}');
  print('$r2, área: ${r2.getArea()}, perímetro: ${r2.getPerimeter()}');
}
