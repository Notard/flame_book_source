import 'package:digger_game/game/title_page.dart';
import 'package:flame/camera.dart';

class DiggerWorld extends World {
  @override
  void onLoad() async {
    add(TitlePage());
  }
}
