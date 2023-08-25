class Shape {
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

  @override
  String toString() => 'Shape[color=$color,filled=$filled]';
}
