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
    TextComponent textComponent = TextComponent(text: 'Hello, Flame!');
    textComponent.anchor = Anchor.center;
    textComponent.x = size.x / 2;
    textComponent.y = size.y / 2;
    add(textComponent);
  }
}
