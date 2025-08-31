void addShadowDown({
  required Vector2 shadowPosition,
  required String holeFileName,
  required int priority,
  required double offsetY,
}) async {
  Sprite sprite = await Sprite.load(holeFileName);
  final Vector2 shadowSize = Vector2(holeSize.x, holeSize.y / 2 + offsetY);
  final Vector2 shadowSpriteSize =
      Vector2(sprite.srcSize.x, sprite.srcSize.y / 2 + offsetY);
  sprite.srcPosition = Vector2(0, sprite.srcSize.y / 2 - offsetY);
  sprite.srcSize = shadowSpriteSize;
  SpriteComponent shadow = SpriteComponent(
    sprite: sprite,
    size: shadowSize,
    position: shadowPosition + Vector2(0, holeSize.y / 2 - offsetY),
    anchor: Anchor.topLeft,
    priority: 5,
  );
  shadow.paint = Paint()
    ..colorFilter = const ColorFilter.mode(Colors.black, BlendMode.modulate)
    ..color = Colors.black.withOpacity(0.5);
  add(shadow);
}
