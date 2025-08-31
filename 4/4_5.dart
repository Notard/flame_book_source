import 'package:flame/components.dart';
import 'package:flutter/painting.dart';

class TitlePage extends PositionComponent {
  @override
  void onLoad() async {
    SpriteComponent logoSprite = SpriteComponent(
      sprite: await Sprite.load('logo.png'),
      size: Vector2.all(512),
      position: Vector2(0, 0),
      anchor: Anchor.topLeft,
    );
    add(logoSprite);
    TextComponent titleText = TextComponent(
      text: 'Mole Game',
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 48,
          fontFamily: '온글잎 은별',
        ),
      ),
    );
    titleText.position = Vector2(256, 450);
    titleText.anchor = Anchor.center;
    logoSprite.add(titleText);
  }
}
