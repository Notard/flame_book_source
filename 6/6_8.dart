import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame_forge2d/forge2d_game.dart';

class GamePage extends Forge2DGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    SpriteComponent background = SpriteComponent(
      sprite: await Sprite.load('game_background.png'),
      size: Vector2(10.8, 19.2),
      position: Vector2(0, 0),
      anchor: Anchor.center,
    );
    add(background);
    world.gravity = Vector2(0, 0);
  }
}
