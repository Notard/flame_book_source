import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';

class Brick extends BodyComponent {
  final Vector2 centerPosition;
  final Color color;
  Brick({
    required this.centerPosition,
    required this.color,
  });
  @override
  Body createBody() {
    PolygonShape shape = PolygonShape();
    shape.setAsBoxXY(1.0, 0.25);
//invincible brick
    FixtureDef fixtureDef = FixtureDef(shape);
    fixtureDef.restitution = 0.0;
    fixtureDef.friction = 0.0;
    BodyDef bodyDef = BodyDef();
    bodyDef.type = BodyType.static; // 벽돌은 움직이지 않음
    bodyDef.position = Vector2(centerPosition.x, centerPosition.y);
    Body body = game.world.createBody(bodyDef);
    body.createFixture(fixtureDef);
    body.userData = this;
    RectangleComponent brickComponent = RectangleComponent(
      size: Vector2(2.0, 0.5),
      paint: Paint()..color = color,
    );
    brickComponent.position = Vector2(-1.0, -0.25);
    brickComponent.anchor = Anchor.topLeft;
    add(brickComponent);
    return body;
  }

  void collision() {
    removeFromParent();
  }
}
