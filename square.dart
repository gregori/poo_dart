import 'rectangle.dart';

class Square extends Rectangle {
  Square() : super();
  Square.withSide(double side) : super.withLengthWidth(side, side);
  Square.withSideColorFilled(
    double side,
    String color,
    bool filled,
  ) : super.withLengthWidthColorFilled(side, side, color, filled);

  double get side => super.length;
  set side(double side) {
    super.length = side;
    super.width = side;
  }

  @override
  set width(double side) {
    this.side = side;
  }

  @override
  set length(double side) {
    this.side = side;
  }

  @override
  String toString() => 'Square[${super.toString()}]';
}

void main() {
  var s1 = Square();
  print(s1);
  s1.side = 4;
  print(s1);
  var s2 = Square.withSide(2.0);
  print(s2);
  var s3 = Square.withSideColorFilled(3, 'yellow', false);
  print('$s3, área: ${s3.getArea()}, perímetro: ${s3.getPerimeter()}');
}
