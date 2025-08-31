EventBus().subscribe(characterMoveEvent, (characterDirection));
void characterDirection(Direction direction) {
  switch (direction) {
  case Direction.up:
    allSpriteOpacityZero();
    moleSpriteJump?.opacity = 1;
    jump();
  break;
    case Direction.left:
    allSpriteOpacityZero();
    moleSpriteLeft?.opacity = 1;
    moveLeft();
  break;
  case Direction.right:
    allSpriteOpacityZero();
    moleSpriteRight?.opacity = 1;
    moveRight();
  break;
  case Direction.down:
    allSpriteOpacityZero();
    moleSpriteDig?.opacity = 1;
    digDown();
  break;
  }
}