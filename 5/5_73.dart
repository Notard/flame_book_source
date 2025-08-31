gameBackground = SpriteComponent();
gameBackground?.sprite = await Sprite.load('game_background.png');
gameBackground?.position = Vector2(0, 0);
gameBackground?.size = Vector2(1080, 1920);
gameBackground?.anchor = Anchor.center;
add(gameBackground!);
OpacityEffect fadeIn = OpacityEffect.to(
1.0,
EffectController(duration: 0.4),
);
gameBackground?.add(fadeIn);
gameBackground?.priority = 1;