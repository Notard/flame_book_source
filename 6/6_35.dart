void collision() {
  removeFromParent();
  EventBus().publish(brickCollisionEvent);
}
