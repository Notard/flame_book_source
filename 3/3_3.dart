import 'package:flame/components.dart';
import 'package:flame_games/game_frame.dart';

class TitlePage extends PositionComponent {
  @override
  void onLoad() async {
    Vector2 screenSize = (parent as GameFrame).size;
    Vector2 screenCenter = screenSize / 2;
    double imageSize =
        screenSize.x > screenSize.y ? screenSize.y : screenSize.x;
    SpriteComponent logoSprite = SpriteComponent(
      sprite: await Sprite.load('logo.png'),
      size: Vector2(imageSize, imageSize),
      position: screenCenter,
      anchor: Anchor.center,
    );
    add(logoSprite);
  }
}
