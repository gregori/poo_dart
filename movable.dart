abstract class Movable {
  void moveUp();
  void moveDown();
  void moveLeft();
  void moveRight();
}

class MovablePoint implements Movable {
  int x;
  int y;
  int xSpeed;
  int ySpeed;

  MovablePoint(this.x, this.y, this.xSpeed, this.ySpeed);

  @override
  String toString() => '($x, $y,speed=($xSpeed,$ySpeed))';

  @override
  void moveDown() {
    y -= ySpeed;
  }

  @override
  void moveLeft() {
    x -= xSpeed;
  }

  @override
  void moveRight() {
    x += xSpeed;
  }

  @override
  void moveUp() {
    y += ySpeed;
  }
}

class MovableCircle implements Movable {
  int radius;
  MovablePoint center;

  MovableCircle(int x, int y, int xSpeed, int ySpeed, this.radius)
      : this.center = MovablePoint(x, y, xSpeed, ySpeed);

  @override
  void moveDown() {
    center.moveDown();
  }

  @override
  void moveLeft() {
    center.moveLeft();
  }

  @override
  void moveRight() {
    center.moveRight();
  }

  @override
  void moveUp() {
    center.moveUp();
  }
}
