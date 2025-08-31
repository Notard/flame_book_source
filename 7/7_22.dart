import 'package:flame/components.dart';

class Bullet extends PositionComponent with HasGameRef {
  @override
  void onLoad() async {
    super.onLoad();
    setSprite();
  }

  void setSprite() {
    Sprite sprite = Sprite(gameRef.images.fromCache('bullet_silver.png'));
    SpriteComponent spriteComponent = SpriteComponent(
      sprite: sprite,
      size: Vector2(20, 50),
    );
    add(spriteComponent);
  }
}
