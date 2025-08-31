TextComponent title = TextComponent(
  text: '땅파기 게임',
  anchor: Anchor.center,
  textRenderer: TextPaint(
    style: GameFunction().getTextStyle(
      fontSize: 160,
      color: Colors.orange,
      ),
    ),
  );
title.position = Vector2(0, -400);
add(title);