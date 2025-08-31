import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:mole_game/title_page.dart';

void main() {
  runApp(
    GameWidget(
      game: FlameGame(
        children: [
          TitlePage(),
        ],
      ),
    ),
  );
}
