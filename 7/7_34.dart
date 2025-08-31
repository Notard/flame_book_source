@override
void update(double dt) {
  super.update(dt);
  _fireTime += dt;
  if (_fireTime >= _fireInterval) {
    EventBus().fire(BulletFireEvent(position: position));
    _fireTime = 0;
  }
}
