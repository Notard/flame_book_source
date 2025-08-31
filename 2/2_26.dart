import 'package:flame/game.dart';

class GameFrame extends FlameGame {
  @override
  void onLoad() async {
    GameButton gameButton = GameButton(
      spriteFileName: 'game_start.png',
    );
    add(gameButton);
    EventBus().subscribe(gameStartEvent, (_) {
      gameButton.position = gameButton.position + Vector2(0, 10);
    });
  }
}
