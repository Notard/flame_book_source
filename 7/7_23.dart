import 'dart:collection';
import 'package:defense_game/game/bullet.dart';
import 'package:flame/components.dart';

class BulletPool extends PositionComponent with HasGameRef {
  @override
  void onLoad() async {
    await gameRef.images.load('bullet_silver.png');
    loadBullet();
    super.onLoad();
  }

  void loadBullet() {
    for (int i = 0; i < 100; i++) {
      Bullet bullet = Bullet();
      add(bullet);
    }
  }
}
