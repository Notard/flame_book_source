PaintTextComponent startText = PaintTextComponent(
  text: '땅파기 게임',
  position: Vector2(0, -200),
  style: GameFunction().getTextStyle(
  fontSize: 120,
  color: Colors.indigo,
  ),
);
startText.anchor = Anchor.center;
add(startText);