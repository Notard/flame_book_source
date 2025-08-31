import 'package:flame/game.dart';
import 'package:flame_games/game_button.dart';
import 'package:flutter/material.dart';

class GameFrame extends FlameGame {
  @override
  void onLoad() async {
    GameButton gameButton = GameButton(
      spriteFileName: 'game_start.png',
    );
    add(gameButton);
  }
}
