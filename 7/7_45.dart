import 'dart:async';
import 'package:defense_game/funtion/event_define.dart';
import 'package:defense_game/funtion/eventbus.dart';
import 'package:flame/components.dart';

class CollisionManager extends PositionComponent {
  List<PositionComponent> bullets = [];
  List<PositionComponent> enemies = [];
  StreamSubscription<ActivateBulletListEvent>? bulletSubscription;
  StreamSubscription<ActivateEnemyListEvent>? enemySubscription;
  @override
  void onLoad() {
    super.onLoad();
    bulletSubscription =
        EventBus().on<ActivateBulletListEvent>(onActivateBulletListEvent);
    enemySubscription =
        EventBus().on<ActivateEnemyListEvent>(onActivateEnemyListEvent);
  }

  void onActivateBulletListEvent(ActivateBulletListEvent event) {
    bullets = event.bullets;
  }

  void onActivateEnemyListEvent(ActivateEnemyListEvent event) {
    enemies = event.enemies;
  }

  @override
  void onRemove() {
    bulletSubscription?.cancel();
    enemySubscription?.cancel();
    super.onRemove();
  }
}
