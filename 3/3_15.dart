import 'package:flame/components.dart';
import 'package:flame_games/game_function.dart';

class GameMainPage extends PositionComponent {
  @override
  void onLoad() async {
    Vector2 imagePosition =
        GameFunction().calculatePositionInScreen(Vector2(0.5, 0.5));
    Vector2 backgroundSize = GameFunction().ratioSize();
    SpriteComponent background = SpriteComponent(
      sprite: await Sprite.load('main_background.png'),
      size: backgroundSize,
      position: imagePosition,
      anchor: Anchor.center,
    );
    add(background);
  }
}
