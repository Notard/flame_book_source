import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/geometry.dart';

void main() {
  runApp(
    GameWidget(
      game: GameFrame(),
    ),
  );
}

class GameFrame extends FlameGame {
  EffectController duration(double x) => EffectController(duration: x);
  @override
  void onLoad() async {
    SpriteComponent spriteComponent = SpriteComponent(
      sprite: await Sprite.load('mole.png'),
    );
    spriteComponent.position = Vector2(150, 150);
    spriteComponent.anchor = Anchor.center;
    add(spriteComponent);
    SequenceEffect seqEffect = SequenceEffect(
      [
        MoveEffect.to(Vector2(400, 300), duration(0.7)),
        RotateEffect.by(tau / 4, duration(0.5)),
        MoveEffect.to(Vector2(400, 400), duration(0.7)),
        ScaleEffect.by(Vector2.all(1.5), duration(0.7)),
        MoveEffect.to(Vector2(400, 500), duration(0.7)),
      ],
    );
    spriteComponent.add(seqEffect);
  }
}
