TextComponent titleText = TextComponent(
  text: '플레임 게임',
  textRenderer: TextPaint(
    style: const TextStyle(
      fontFamily: '온글잎 은별',
      fontSize: 100.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      shadows: <Shadow>[
        Shadow(
          blurRadius: 2.0,
          color: Colors.black,
          offset: Offset(13.0, 13.0),
        ),
        Shadow(
          blurRadius: 6.0,
          color: Colors.red,
          offset: Offset(3.0, 3.0),
        ),
      ],
    ),
  ),
);
