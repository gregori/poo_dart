import 'dart:math';

class Circle {
  double _radius;

  Circle() : this._radius = 1.0;
  Circle.withRadius(this._radius);

  double get radius => this._radius;
  set radius(double radius) {
    this._radius = radius;
  }

  double getArea() => pi * pow(radius, 2);
  double getCircumference() => 2 * pi * radius;

  @override
  String toString() => 'Circle[radius=$radius]';
}

void main() {
  var c1 = Circle();
  c1.radius = 3.4;
  print('$c1, área: ${c1.getArea()}, circunferência: ${c1.getCircumference()}');
  var c2 = Circle.withRadius(2.0);
  print('Círculo de raio ${c2.radius}');
}
