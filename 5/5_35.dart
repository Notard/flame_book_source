@override
void update(double dt) {
  super.update(dt);
  double? blockY = _blockManagerComponent?.getGridYPosition(gridPosition.x);
  if (blockY != null) {
    groundLevel = (blockY - 1) * 160;
  }
}
