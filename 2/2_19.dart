import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_games/event_bus.dart';
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
    EventBus().subscribe(gameStartEvent, (_) {
      changeText();
    });
    TextComponent textComponent = TextComponent();
    textComponent.text = 'Game Start';
    add(textComponent);
    gameStart();
  }

  Future<void> gameStart() async {
    await Future.delayed(const Duration(seconds: 2));
    EventBus().publish(gameStartEvent, null);
  }

  void changeText() {
    removeAll(children.whereType<TextComponent>());
    TextComponent textComponent = TextComponent();
    textComponent.text = 'Game Over';
    add(textComponent);
  }
}
