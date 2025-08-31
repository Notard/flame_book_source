void addHole({required Vector2 position, required int priority}) async {
  String spriteFileName = 'hole.png';
  SpriteComponent hole = SpriteComponent(
    sprite: await Sprite.load(spriteFileName),
    size: Vector2.all(350),
    position: position,
    anchor: Anchor.center,
    priority: priority,
  );
  add(hole);
  addShadow(
      position: position + Vector2.all(30),
      priority: 9,
      spriteFileName: spriteFileName);
}

void addShadow(
    {required Vector2 position,
    required String spriteFileName,
    required int priority}) async {
  SpriteComponent shadow = SpriteComponent(
    sprite: await Sprite.load(spriteFileName),
    size: Vector2.all(350),
    position: position,
    anchor: Anchor.center,
  );
  shadow.paint = Paint();
  shadow.paint.colorFilter =
      const ColorFilter.mode(Colors.black, BlendMode.modulate);
  shadow.paint.color = Colors.black.withOpacity(0.5);
  add(shadow);
}
