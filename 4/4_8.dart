import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:mole_game/functions/event_bus.dart';

class GameFrame extends World {
  @override
  void onLoad() async {
    EventBus().subscribe(mainMenuEvent, (_) {});
    return super.onLoad();
  }
}
