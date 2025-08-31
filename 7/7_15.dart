import 'package:defense_game/game/cloud.dart';
import 'package:flame/components.dart';
import 'game_background.dart';

class GamePage extends PositionComponent {
  GamePage({super.key});
  SpriteComponent? background;
  final List<SpriteComponent>? clouds = [];
  @override
  void onLoad() async {
    GameBackground gameBackground = GameBackground();
    gameBackground.priority = 0;
    add(gameBackground);
    CloudSpawner cloudSpawner = CloudSpawner();
    cloudSpawner.priority = 1;
    add(cloudSpawner);
  }
}
