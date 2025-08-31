@override
void update(double dt) {
  super.update(dt);
  if (body.position.y > 7.4) {
    EventBus().publish(ballOutEvent);
    removeFromParent();
  }
}
