import 'package:digger_game/game/block_manager_component.dart';
import 'package:digger_game/game/mole_character.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';

class GamePage extends PositionComponent {
  MoleCharacter? moleCharacter;
  BlockManagerComponent? blockManagerComponent;
  double nowTime = 0.0;
  static const double startTime = 60.0;
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
    background.priority = 1;
    moleCharacter = MoleCharacter();
    moleCharacter?.gridPosition = Vector2(0, -6);
    add(moleCharacter!);
    moleCharacter?.priority = 4;
    blockManagerComponent = BlockManagerComponent();
    blockManagerComponent?.priority = 3;
    add(blockManagerComponent!);
    moleCharacter?.setBlockManagerComponent(blockManagerComponent);
    nowTime = startTime;
  }

  @override
  void update(double dt) {
    nowTime -= dt;
    if (nowTime <= 0) {}
  }
}
