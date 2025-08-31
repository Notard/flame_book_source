import 'package:flame/geometry.dart';

@override
void onLoad() async {
  SpriteComponent spriteComponent = SpriteComponent(
    sprite: await Sprite.load('mole.png'),
  );
  spriteComponent.position = Vector2(100, 100);
  spriteComponent.anchor = Anchor.center;
  add(spriteComponent);
  RotateEffect rotateEffect = RotateEffect.by(
    tau,
    EffectController(
      duration: 5.0,
      infinite: false,
    ),
  );
  spriteComponent.add(rotateEffect);
}
