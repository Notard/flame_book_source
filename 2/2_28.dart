import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_games/event_bus.dart';
import 'package:flutter/material.dart';

class ImageTextButton extends PositionComponent with TapCallbacks {
  final TextComponent textComponent;
  final SpriteComponent spriteComponent;

  ImageTextButton({
    required this.textComponent,
    required this.spriteComponent,
  });
  @override
  void onLoad() async {
    add(spriteComponent);
    add(textComponent);
    size = Vector2(
      spriteComponent.size.x,
      spriteComponent.size.y,
    );
    textComponent.position = Vector2(
      (spriteComponent.width) / 2,
      (spriteComponent.height) / 2,
    );
    textComponent.anchor = Anchor.center;
  }

  @override
  void onTapDown(TapDownEvent event) {
    spriteComponent.paint = Paint();
    spriteComponent.paint.colorFilter =
        const ColorFilter.mode(Colors.grey, BlendMode.modulate);
    super.onTapDown(event);
    event.handled = true;
  }

  @override
  void onTapUp(TapUpEvent event) {
    spriteComponent.paint = Paint();
    super.onTapUp(event);
    EventBus().publish(gameStartEvent, null);
    event.handled = true;
  }
}
