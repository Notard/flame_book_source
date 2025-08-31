import 'package:flame/events.dart';
import 'package:flame/components.dart';

class GameButton extends PositionComponent with TapCallbacks {
  GameButton();
  @override
  void onLoad() async {}
  @override
  void onTapDown(TapDownEvent event) {}
  @override
  void onTapUp(TapUpEvent event) {}
}
