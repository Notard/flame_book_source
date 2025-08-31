import 'package:flame/components.dart';

class GameMainPage extends PositionComponent {
  @override
  void onLoad() async {
    SpriteComponent backgroundImage = SpriteComponent(
      sprite: await Sprite.load('main_menu_background.png'),
      size: Vector2(1080, 1920),
      position: Vector2(0, 0),
      anchor: Anchor.center,
    );
    add(backgroundImage);
  }
}
