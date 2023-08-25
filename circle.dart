import 'dart:math';

import 'shape.dart';

class Circle extends Shape {
  double _radius;

  Circle() : this._radius = 1.0;
  Circle.withRadius(this._radius);
  Circle.withRadiusColorFilled(
    this._radius,
    String color,
    bool filled,
  ) : super.withColorFilled(color, filled);

  double get radius => this._radius;
  set radius(double radius) {
    this._radius = radius;
  }

  double getArea() => pi * pow(radius, 2);
  double getCircumference() => 2 * pi * radius;

  @override
  String toString() => 'Circle[${super.toString()},radius=$radius]';
}

void main() {
  var c1 = Circle();
  print('$c1, área: ${c1.getArea()}, circunferência: ${c1.getCircumference()}');
  var c2 = Circle.withRadius(2.0);
  print('Círculo de raio ${c2.radius}');
  print(c2);
  var c3 = Circle.withRadiusColorFilled(1.5, 'blue', false);
  print(c3);
}
