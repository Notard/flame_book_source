@override
void onLoad() async {
  SpriteComponent spriteComponent = SpriteComponent(
    sprite: await Sprite.load('mole.png'),
  );
  spriteComponent.position = Vector2(100, 100);
  spriteComponent.anchor = Anchor.center;
  add(spriteComponent);
  Path path = Path();
  path.moveTo(100, 150);
  path.lineTo(200, 200);
  path.lineTo(300, 100);
  path.lineTo(400, 200);
  MoveAlongPathEffect pathEffect =
      MoveAlongPathEffect(path, EffectController(duration: 5));
  spriteComponent.add(pathEffect);
}
