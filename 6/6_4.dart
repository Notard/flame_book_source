import 'package:flame/components.dart';

class TitlePage extends PositionComponent {
  SpriteComponent? titleSprite;

  @override
  Future<void> onLoad() async {
    titleSprite = SpriteComponent(
      sprite: await Sprite.load('title.png'),
      position: Vector2(0, 0),
      anchor: Anchor.center,
      size: Vector2(1080, 1920),
    );
    add(titleSprite!);
  }
}
