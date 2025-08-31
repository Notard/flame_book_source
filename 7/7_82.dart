void spawnEnemy() {
  double randomX =
      (random.nextDouble() * gameRef.size.x) - (gameRef.size.x / 2);
  double spawnY = -(gameRef.size.y / 2);
  Enemy enemy = Enemy(
      uniqueId: enemyCount,
      maxHp: nowMaxHp,
      speed: 100,
      damage: 1,
      imageName: 'enemy_01.png',
      position: Vector2(randomX, spawnY));
  add(enemy);
  enemyCount++;
  enemies.add(enemy);
}
