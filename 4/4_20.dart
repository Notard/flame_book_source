import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:mole_game/functions/game_function.dart';

class GameMainPage extends PositionComponent {
  @override
  Future<void> onLoad() async {
    SpriteComponent backgroundImage = SpriteComponent(
      sprite: await Sprite.load('main_menu_background.png'),
      size: Vector2(1080, 1920),
      position: Vector2(0, 0),
      anchor: Anchor.center,
    );
    add(backgroundImage);
    loadTitleText();
  }

  void loadTitleText() {
    TextComponent textComponent = TextComponent(
      text: '두더지 게임',
      position: Vector2(0, -650),
      anchor: Anchor.center,
      textRenderer: TextPaint(
        style: GameFunction().getTextStyle(
          fontSize: 180,
          color: Colors.indigo,
        ),
      ),
    );
    add(textComponent);
  }
}
