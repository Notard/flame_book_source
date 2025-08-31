void onEnemyDamageEvent(EnemyDamageEvent event) {
  if (enemies.isEmpty) {
    return;
  }
  if (enemies.any((enemy) => enemy.uniqueId == event.enemyID) == false) {
    return;
  }
  Enemy enemy = enemies.firstWhere((enemy) => enemy.uniqueId == event.enemyID);
  enemy.damaged(event.damage);
  if (enemy.hp <= 0) {
    enemies.remove(enemy);
  }
}
