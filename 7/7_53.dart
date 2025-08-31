void collideWith(PositionComponent bullet, PositionComponent enemy) {
  Circle bulletCircle = Circle(bullet.position, bullet.size.x / 2);
  Circle enemyCircle = Circle(enemy.position, enemy.size.x / 2);
  if (checkCollision(bulletCircle, enemyCircle)) {
// 이벤트버스로 충돌 여부를 전송
  }
}

@override
void update(double dt) {
  super.update(dt);
  timeSinceLastUpdate += dt;
  if (timeSinceLastUpdate > updateInterval) {
    updateGrid(bullets, bulletGrid);
    updateGrid(enemies, enemyGrid);
    timeSinceLastUpdate = 0.0;
  }
// 충돌 검사
  for (PositionComponent bullet in bullets) {
    int bulletCell = getCellIndex(bullet.position);
    if (enemyGrid.containsKey(bulletCell) == true) {
      for (var enemy in enemyGrid[bulletCell]!) {
        collideWith(bullet, enemy);
      }
    }
  }
}
