import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';
import 'package:mole_game/component/game_rect_button.dart';
import 'package:mole_game/functions/event_bus.dart';
import 'package:mole_game/functions/game_function.dart';

class GameOver extends PositionComponent with TapCallbacks {
  GameOver({required super.priority}) {
    anchor = Anchor.center;
    size = Vector2(1080, 1920);
    position = Vector2(0, 0);
  }
  @override
  void onLoad() async {
    String gameOverImage = 'game_over.png';
    final Sprite sprite = await Sprite.load(gameOverImage);
    Vector2 imageCompoentSize = sprite.originalSize;
    double aspectRatio = size.x / size.y;
//width는 960 픽셀
    imageCompoentSize = Vector2(960, 960 * aspectRatio);
    final SpriteComponent spriteComponent = SpriteComponent(
      sprite: sprite,
      size: imageCompoentSize,
      anchor: Anchor.center,
    );
    spriteComponent.position = Vector2(
      540,
      960,
    );
    add(spriteComponent);
    GameRectButton okButton = GameRectButton(
      spriteFileName: 'white_button.png',
      buttonSize: Vector2(500, 240),
      textComponent: TextComponent(
        text: '메인 메뉴로',
        anchor: Anchor.center,
        textRenderer: TextPaint(
          style: GameFunction().getTextStyle(
            fontSize: 100,
            color: Colors.indigo,
          ),
        ),
      ),
      onTapUpEvent: () {
        EventBus().publish(mainMenuEvent);
      },
    );
    okButton.position = Vector2(540, 1500);
    add(okButton);
  }

  @override
  bool onTapUp(TapUpEvent event) {
    event.handled = true;
    return true;
  }

  @override
  bool onTapDown(TapDownEvent event) {
    event.handled = true;
    return true;
  }
}
