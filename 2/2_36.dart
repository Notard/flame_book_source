@override
void onLoad() async {
  TextComponent textComponent = TextComponent();
  TextPaint textPaint = TextPaint(
    style: TextStyle(
      color: BasicPalette.black.color,
      fontFamily: 'Arial',
      fontSize: 24,
    ),
  );
  textComponent.textRenderer = textPaint;
  textComponent.text = 'Game Start';
  textComponent.anchor = Anchor.center;
  GameRectButton gameRectButton = GameRectButton(
    spriteFileName: 'trans_button.png',
    buttonSize: Vector2(250, 100),
    textComponent: textComponent,
  );
  gameRectButton.position = Vector2(300, 150);
  add(gameRectButton);
}
