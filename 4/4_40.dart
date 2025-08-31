import 'package:flame/components.dart';

class Mole extends PositionComponent {
  Mole({
    required super.position,
    required super.priority,
  });
  @override
  void onLoad() async {
    addMole();
  }

  void addMole() async {
    String spriteFileName = 'mole_normal.png';
    size = Vector2(230, 306);
    SpriteComponent mole = SpriteComponent(
      sprite: await Sprite.load(spriteFileName),
      size: size,
      anchor: Anchor.topLeft,
    );
    add(mole);
    anchor = Anchor.center;
  }
}
