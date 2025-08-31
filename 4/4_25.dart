void loadStartButton() async {
  GameRectButton gameRectButton = GameRectButton(
    spriteFileName: 'menu_button.png',
    buttonSize: Vector2(500, 200),
    textComponent: TextComponent(
      text: '시작하기',
      anchor: Anchor.center,
      textRenderer: TextPaint(
        style: GameFunction().getTextStyle(
          fontSize: 60,
          color: Colors.white,
        ),
      ),
    ),
    onTapUpEvent: () {},
  );
  gameRectButton.position = Vector2(0, 500);
  add(gameRectButton);
}
