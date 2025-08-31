@override
void moveLeft() {
  bool? isDestroyed = _blockManagerComponent?.hitBlock(
      Vector2(gridPosition.x + -1, gridPosition.y), power);
  if (isDestroyed == true) {
    super.moveLeft();
  }
}

@override
void moveRight() {
  bool? isDestroyed = _blockManagerComponent?.hitBlock(
      Vector2(gridPosition.x + 1, gridPosition.y), power);
  if (isDestroyed == true) {
    super.moveRight();
  }
}

void digDown() {
  _blockManagerComponent?.hitBlock(
      Vector2(gridPosition.x, gridPosition.y + 1), power);
}
