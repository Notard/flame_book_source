import 'package:flame/components.dart';

class GamePage extends PositionComponent {
  @override
  Future<void> onLoad() async {
    SpriteComponent backgroundImage = SpriteComponent(
      sprite: await Sprite.load('mole_game_background.png'),
      size: Vector2(1080, 1920),
      position: Vector2(0, 0),
      anchor: Anchor.center,
    );
    add(backgroundImage);
    addHole(position: Vector2(-360, -100), priority: 10);
    addHole(position: Vector2(0, -100), priority: 10);
    addHole(position: Vector2(360, -100), priority: 10);
    addHole(position: Vector2(-360, 200), priority: 20);
    addHole(position: Vector2(0, 200), priority: 20);
    addHole(position: Vector2(360, 200), priority: 20);
    addHole(position: Vector2(-360, 500), priority: 30);
    addHole(position: Vector2(0, 500), priority: 30);
    addHole(position: Vector2(360, 500), priority: 30);
  }

  void addHole({required Vector2 position, required int priority}) async {
//hole.png
    SpriteComponent hole = SpriteComponent(
      sprite: await Sprite.load('hole.png'),
      size: Vector2.all(350),
      position: position,
      anchor: Anchor.center,
      priority: priority,
    );
    add(hole);
  }
}
