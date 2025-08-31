GameRectButton okButton = GameRectButton(
spriteFileName: 'white_button.png',
buttonSize: Vector2(500, 240),
textComponent: TextComponent(
  text: buttonText,
  anchor: Anchor.center,
  textRenderer: TextPaint(
    style: GameFunction().getTextStyle(
    fontSize: 90,
    color: Colors.indigo,
    ),
  ),
),
onTapUpEvent: () {
  callPage.removeFromParent();
    EventBus().publish(eventName);
  },
);
okButton.position = Vector2(540, 1500);
add(okButton);