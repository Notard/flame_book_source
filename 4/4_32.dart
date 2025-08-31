Future<SpriteComponent> loadHalfSprite(String spriteFileName, bool upperHalf,
    Vector2 position, int priority) async {
  Sprite sprite = await Sprite.load(spriteFileName);
  Vector2 size = sprite.srcSize;
  if (upperHalf == true) {
    sprite.srcPosition = Vector2(0, 0);
  } else {
    sprite.srcPosition = Vector2(0, size.y / 2);
  }
  sprite.srcSize = Vector2(size.x, size.y / 2);
  return SpriteComponent(
    sprite: sprite,
    size: Vector2(350, 175),
    position: position,
    anchor: Anchor.topLeft,
    priority: priority,
  );
}
