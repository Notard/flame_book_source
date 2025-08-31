@override
void update(double dt) {
  super.update(dt);
  if (_isSuccess) {
    return;
  }
  double? blockY =
      _blockManagerComponent?.getGridYPosition(gridPosition.x, gridPosition.y);
  if (blockY != null) {
    groundLevel = (blockY - 1) * 160;
  }
  double groundY = (position.y) / 160;
  heightComponent?.renderNumber(groundY);
  powerComponent?.renderNumber(power.toDouble());
  if (groundY >= 99.0) {
    EventBus().publish(gameSuccessEvent);
    showPopup();
  }
}
