@override
void onLoad() async {
  SpriteComponent spriteComponent = SpriteComponent(
    sprite: await Sprite.load('mole.png'),
  );
  spriteComponent.position = Vector2(150, 150);
  spriteComponent.anchor = Anchor.center;
  add(spriteComponent);
  ScaleEffect scaleEffect = ScaleEffect.to(
    Vector2(2, 2),
    EffectController(
      duration: 2,
    ),
  );
  spriteComponent.add(scaleEffect);
}
