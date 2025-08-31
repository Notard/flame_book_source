@override
void onLoad() async {
  SpriteComponent spriteComponent = SpriteComponent(
    sprite: await Sprite.load('mole.png'),
  );
  spriteComponent.position = Vector2(150, 150);
  spriteComponent.anchor = Anchor.center;
  add(spriteComponent);
  OpacityEffect fadeInEffect = // 페이드인 효과
      OpacityEffect.fadeOut(EffectController(duration: 2));
  spriteComponent.add(fadeInEffect);
// OpacityEffect fadeOutEffect = 페이드아웃 효과
// OpacityEffect.fadeIn(EffectController(duration: 2));
// spriteComponent.add(fadeOutEffect);
}
