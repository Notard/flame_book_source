class GameFrame extends FlameGame {
  EffectController duration(double x) => EffectController(duration: x);
  @override
  void onLoad() async {
    SpriteComponent spriteComponent = SpriteComponent(
      sprite: await Sprite.load('mole.png'),
    );
    spriteComponent.position = Vector2(150, 150);
    spriteComponent.anchor = Anchor.center;
    add(spriteComponent);
    MoveEffect moveEffect = MoveEffect.to(Vector2(400, 300), duration(0.7));
    RotateEffect rotateEffect = RotateEffect.by(tau / 4, duration(0.7));
    ScaleEffect scaleEffect = ScaleEffect.by(Vector2.all(1.5), duration(2.0));
    spriteComponent.addAll([moveEffect, rotateEffect, scaleEffect]);
  }
}
