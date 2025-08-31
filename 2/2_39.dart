@override
void onLoad() async {
  SpriteComponent spriteComponent = SpriteComponent(
    sprite: await Sprite.load('mole.png'),
  );
  spriteComponent.position = Vector2(100, 100);
  spriteComponent.anchor = Anchor.center;
  add(spriteComponent);
  MoveEffect moveEffect = MoveEffect.to(
    Vector2(380, 150),
    EffectController(
      duration: 3,
    ),
  );
  spriteComponent.add(moveEffect);
}
