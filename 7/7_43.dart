import 'dart:math';
import 'package:defense_game/game/enemy.dart';
import 'package:flame/components.dart';

class EnemyManager extends Component with HasGameRef {
  double spawnTimer = 0;
  double spawnInterval = 1;
  Random random = Random();
  List<Enemy> enemies = [];
  int enemyCount = 0;
  @override
  void onLoad() async {
    await gameRef.images.load('enemy_01.png');

    super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);
    spawnTimer += dt;
    if (spawnTimer >= spawnInterval) {
      spawnEnemy();
      spawnTimer = 0;
    }
  }

  void spawnEnemy() {
    double randomX =
        (random.nextDouble() * gameRef.size.x) - (gameRef.size.x / 2);
    double spawnY = -(gameRef.size.y / 2);
    Enemy enemy = Enemy(
        uniqueId: enemyCount,
        maxHp: 10,
        speed: 100,
        damage: 1,
        imageName: 'enemy_01.png',
        position: Vector2(randomX, spawnY));
    add(enemy);
    enemyCount++;
    enemies.add(enemy);
  }
}
