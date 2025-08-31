void onLoad() async {
  Vector2 screenSize = (parent as GameFrame).size;
  Vector2 screenCenter = screenSize / 2;
  double imageSize = screenSize.x > screenSize.y ? screenSize.y : screenSize.x;
  SpriteComponent logoSprite = SpriteComponent(
    sprite: await Sprite.load('logo.png'),
    size: Vector2(imageSize, imageSize),
    position: screenCenter,
    anchor: Anchor.center,
  );
  logoSprite.opacity = 0.0;
  add(logoSprite);
  OpacityEffect fadeIn = OpacityEffect.to(
    1.0,
    EffectController(duration: 2.4),
  );
  OpacityEffect fadeOut = OpacityEffect.to(
    0.0,
    DelayedEffectController(
      delay: 3,
      EffectController(duration: 2.4),
    ),
  );
// 로고 이미지가 페이드아웃이 되면 메인 메뉴로 이동
  fadeOut.onComplete = () {
    EventBus().publish(mainMenuEvent, null);
  };
  SequenceEffect fadeInOutSequence = SequenceEffect([fadeIn, fadeOut]);
  logoSprite.add(fadeInOutSequence);
}
