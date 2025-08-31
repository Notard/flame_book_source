import 'package:flame/components.dart';
import 'package:flame_games/background_image.dart';

class GameMainPage extends PositionComponent {
  @override
  Future<void> onLoad() async {
    BackgroundImage backgroundImage =
        BackgroundImage(fileName: 'main_background.png');
    add(backgroundImage);
  }
}
