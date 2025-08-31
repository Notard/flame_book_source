import 'package:flame/components.dart';

class BulletPool extends PositionComponent with HasGameRef {
  @override
  void onLoad() async {
    gameRef.images.load('bullet_silver.png');
    super.onLoad();
  }
}
