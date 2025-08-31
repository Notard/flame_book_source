import 'package:flame/game.dart';
import 'package:flame_games/title.dart';

class GameFrame extends FlameGame {
  @override
  void onLoad() async {
    TitlePage titlePage = TitlePage();
    add(titlePage);
  }
}
