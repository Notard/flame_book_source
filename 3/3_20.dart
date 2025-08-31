import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:flame_games/game_frame.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    GameWidget(
      game: FlameGame(
        world: GameFrame(),
        camera: CameraComponent(
          viewport: FixedResolutionViewport(
            resolution: Vector2(1080, 1920),
          ),
        ),
      ),
    ),
  );
}

class GameFrame extends World {}
