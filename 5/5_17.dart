GameRectButton startButton = GameRectButton(
  spriteFileName: 'white_button.png',
  buttonSize: Vector2(540, 200),
  textComponent: TextComponent(
    text: '시작하기',
    anchor: Anchor.center,
    textRenderer: TextPaint(
      style: GameFunction().getTextStyle(
        fontSize: 60,
        color: Colors.indigo,
      ),
    ),
  ),
  onTapUpEvent: () {
    removeFromParent();
    EventBus().publish(gamePageEvent, null);
  },
);
