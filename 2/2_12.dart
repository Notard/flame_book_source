import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    GameWidget(
      game: GameFrame(),
    ),
  );
}

class GameFrame extends FlameGame {
  @override
  void onLoad() async {
    SpriteComponent player = SpriteComponent(
      sprite: await loadSprite('mole.png'),
    );
    add(player);
  }
}
