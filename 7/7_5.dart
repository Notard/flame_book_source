import 'package:flame/components.dart';
import 'package:flame/effects.dart';

class TitlePage extends PositionComponent {
  TitlePage({super.key});
  @override
  void onLoad() async {
//title_back.png
    SpriteComponent title =
        SpriteComponent(sprite: await Sprite.load('title_back.png'));
    title.position = Vector2(0, 0);
    title.anchor = Anchor.center;
    title.size = Vector2(1080, 1920);
    title.opacity = 0;
    add(title);
    fadeIn(title);
  }

  void fadeIn(PositionComponent component) {
    OpacityEffect fadeIn = OpacityEffect.to(
      1.0,
      EffectController(duration: 3.0),
    );
    component.add(fadeIn);
    OpacityEffect fadeOut = OpacityEffect.to(
      0.0,
      DelayedEffectController(
        delay: 0.1,
        EffectController(duration: 1.0),
      ),
    );
    SequenceEffect fadeInOutSequence = SequenceEffect([fadeIn, fadeOut]);
    component.add(fadeInOutSequence);
    fadeInOutSequence.onComplete = () {
      removeFromParent();
// EventBus().publish(mainMenuEvent);
    };
  }
}
