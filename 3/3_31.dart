TextComponent titleText = TextComponent(
  text: '플레임 게임',
  textRenderer: TextPaint(
    style: const TextStyle(
      fontFamily: '온글잎 은별',
      fontSize: 100.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}
titleText.anchor = Anchor.center;
titleText.position = Vector2(0, -800);
add(titleText);