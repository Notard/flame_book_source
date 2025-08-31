import 'package:flame/components.dart';

class Enemy extends PositionComponent with HasGameRef {
  final int uniqueId;
  final int maxHp;
  final double speed;
  final int damage;
  final String imageName;
  int hp = 0;
  Enemy(
      {required this.uniqueId,
      required this.maxHp,
      required this.speed,
      required this.damage,
      required this.imageName,
      required super.position}) {
    hp = maxHp;
  }
  @override
  void onLoad() {
    super.onLoad();
    setSprite();
  }

  void setSprite() {
    Sprite sprite = Sprite(gameRef.images.fromCache(imageName));
    size = Vector2(150, 150);
    SpriteComponent spriteComponent = SpriteComponent(
      sprite: sprite,
      size: Vector2(100, 150),
    );
    add(spriteComponent);
    anchor = Anchor.center;
  }

  void damaged(int damage) {
    hp -= damage;
    if (hp <= 0) {
      removeFromParent();
    }
  }

  @override
  void update(double dt) {
    super.update(dt);
    Vector2 velocity = Vector2(0, 1);
    position += velocity * speed * dt;
    if (position.y > gameRef.size.y / 2) {
      removeFromParent();
    }
  }
}
