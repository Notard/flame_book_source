import 'package:flame/components.dart';
import 'package:flame/effects.dart';

class Hammer extends PositionComponent {
  Hammer({
    required super.priority,
  }) {
    width = 250;
    height = 250;
  }
  SpriteComponent? _hammerSprite;
  @override
  void onLoad() async {
    super.onLoad();
    anchor = Anchor.center;
    Sprite sprite = await Sprite.load('hammer.png');
    _hammerSprite = SpriteComponent(sprite: sprite, size: Vector2(200, 200));
    _hammerSprite!.opacity = 0;
    add(_hammerSprite!);
  }
}
