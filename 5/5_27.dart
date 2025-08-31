import 'package:flame/components.dart';
import 'package:flame/effects.dart';

class GameComponent extends PositionComponent {
  final double _gridSize = 160.0;
  double get gridSize => _gridSize;
  bool hasEffect = false;
  Vector2 get gridPosition => position / _gridSize;
  set gridPosition(Vector2 value) {
    Vector2 newPosition = value * _gridSize;
// newPosition 의 소수점 1자리 이하 반올림
    newPosition =
        Vector2(newPosition.x.roundToDouble(), newPosition.y.roundToDouble());
    print(newPosition);
    if (newPosition.x <= -640 || newPosition.x >= 480) {
      return;
    }
    if (hasEffect == true) {
      MoveEffect moveEffect = MoveEffect.to(
        newPosition,
        EffectController(duration: 0.25),
        onComplete: () {
          position = newPosition;
        },
      );
      add(moveEffect);
    } else {
      position = newPosition;
    }
  }

  bool collidesWith(GameComponent other) {
// 충돌 처리
    return (gridPosition == other.gridPosition);
  }

  void moveUp() {
    gridPosition = gridPosition + Vector2(0, -1);
  }

  void moveDown() {
    gridPosition = gridPosition + Vector2(0, 1);
  }

  void moveLeft() {
    gridPosition = gridPosition + Vector2(-1, 0);
  }

  void moveRight() {
    gridPosition = gridPosition + Vector2(1, 0);
  }

  void move(Vector2 direction) {
    gridPosition = gridPosition + direction;
  }
}
