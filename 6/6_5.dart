import 'package:brick_breaker/game/title_page.dart';
import 'package:flame/camera.dart';
import 'package:flame/components.dart';

class BreakBrickWorld extends World {
  @override
  void onLoad() async {
    TitlePage titlePage = TitlePage();
    add(titlePage);
    super.onLoad();
  }
}
