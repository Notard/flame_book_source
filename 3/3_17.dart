class GameMainPage extends PositionComponent {
  SpriteComponent? background;
  @override
  void onLoad() async {
    Vector2 imagePosition =
        GameFunction().calculatePositionInScreen(Vector2(0.5, 0.5));
    Vector2 backgroundSize = GameFunction().ratioSize();
    background = SpriteComponent(
      sprite: await Sprite.load('main_background.png'),
      size: backgroundSize,
      position: imagePosition,
      anchor: Anchor.center,
    );
    add(background!);
  }

  @override
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);
//화면 크기가 변경되면 배경 이미지도 변경
    if (background == null) return;
    Vector2 imagePosition =
        GameFunction().calculatePositionInScreen(Vector2(0.5, 0.5));
    Vector2 backgroundSize = GameFunction().ratioSize();
//배경 이미지를 다시 설정
    background!
      ..size = backgroundSize
      ..position = imagePosition;
  }
}
