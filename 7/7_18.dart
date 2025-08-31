import 'dart:async';
import 'package:defense_game/function/event_define.dart';
import 'package:defense_game/function/eventbus.dart';
import 'package:flame/components.dart';

class MyShip extends PositionComponent {
  StreamSubscription<PanMoveEvent>? panMoveSubscription;
  @override
  void onLoad() async {
    Sprite sprite = await Sprite.load('my_ship.png');
    SpriteComponent ship = SpriteComponent(
      sprite: sprite,
      size: Vector2(300, 300),
      anchor: Anchor.center,
    );
    add(ship);
    position = Vector2(0, 800);
    panMoveSubscription = EventBus().on<PanMoveEvent>(onPanMoveEvent);
  }

  @override
  void onRemove() {
    panMoveSubscription?.cancel();
    super.onRemove();
  }

  void onPanMoveEvent(PanMoveEvent event) {
    position.x += event.moveX;
    position.x = position.x.clamp(-540, 540);
  }
}
