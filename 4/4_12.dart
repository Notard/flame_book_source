import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flutter/material.dart';

class TitlePage extends PositionComponent {
  Future<SpriteComponent> makeLogo() async {
    Sprite sprite = await Sprite.load('logo.png');
    return SpriteComponent(
      sprite: sprite,
      size: Vector2.all(1080),
      position: Vector2(0, 0),
      anchor: Anchor.center,
    );
  }

  Future<TextComponent> makeTitleText() async {
    return TextComponent(
      position: Vector2(540, 960),
      anchor: Anchor.center,
      text: '두더지 잡기 게임',
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
          fontSize: 96,
          fontFamily: '온글잎 은별',
          shadows: [
            Shadow(
              color: Colors.white,
              offset: Offset(2, 2),
              blurRadius: 10,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Future<void> onLoad() async {
    SpriteComponent spriteComponent = await makeLogo();
    spriteComponent.opacity = 0;
    add(spriteComponent);
    TextComponent titleText = await makeTitleText();
    spriteComponent.add(titleText);
    OpacityEffect fadeIn = OpacityEffect.to(
      1.0,
      EffectController(duration: 2.4),
    );
    OpacityEffect fadeOut = OpacityEffect.to(
      0.0,
      DelayedEffectController(
        delay: 3,
        EffectController(duration: 2.4),
      ),
    );
    SequenceEffect fadeInOutSequence = SequenceEffect([fadeIn, fadeOut]);
    spriteComponent.add(fadeInOutSequence);
  }
}
