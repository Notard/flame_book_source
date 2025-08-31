@override
void update(double dt) {
  if (!isActive) {
    return;
  }
  super.update(dt);
  position += velocity * dt * _speed;
  if (position.y < -gameRef.size.y / 2) {
    inactivate();
  }
}
