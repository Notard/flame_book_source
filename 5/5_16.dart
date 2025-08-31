import 'package:flame/components.dart';
import 'package:flame/effects.dart';

class GamePage extends PositionComponent {
  @override
  void onLoad() async {
    SpriteComponent background = SpriteComponent();
    background.sprite = await Sprite.load('game_background.png');
    background.position = Vector2(0, 0);
    background.size = Vector2(1080, 1920);
    background.anchor = Anchor.center;
    add(background);
    OpacityEffect fadeIn = OpacityEffect.to(
      1.0,
      EffectController(duration: 0.4),
    );
    background.add(fadeIn);
  }
}
