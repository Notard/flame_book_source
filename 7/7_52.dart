// 충돌 검사
bool checkCollision(Circle c1, Circle c2) {
  double distanceSquared = (c1.center - c2.center).length2;
  double radiusSum = c1.radius + c2.radius;
  return distanceSquared <= radiusSum * radiusSum;
}
