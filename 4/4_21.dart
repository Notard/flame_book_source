void loadStartButton() async {
  Sprite sprite = await Sprite.load('menu_button.png');
  TextComponent textComponent = TextComponent(
    text: '시작하기',
    anchor: Anchor.center,
    textRenderer: TextPaint(
      style: GameFunction().getTextStyle(
        fontSize: 60,
        color: Colors.white,
      ),
    ),
    position: Vector2(0, 500),
  );
  NineTileBox nineTileBox = NineTileBox(sprite);
  NineTileBoxComponent nineTileBoxComponent = NineTileBoxComponent(
    nineTileBox: nineTileBox,
    size: Vector2(500, 200),
    anchor: Anchor.center,
  );
  nineTileBoxComponent.position = Vector2(0, 500);
  add(nineTileBoxComponent);
  add(textComponent);
  RectangleComponent overlay = RectangleComponent(
    size: Vector2(500, 200),
    anchor: Anchor.center,
    paint: Paint()..color = Colors.grey.withAlpha(128),
  );
  overlay.position = Vector2(0, 500);
  add(overlay);
}
