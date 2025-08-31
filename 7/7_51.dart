@override
void update(double dt) {
  super.update(dt);
  timeSinceLastUpdate += dt;
  if (timeSinceLastUpdate > updateInterval) {
    updateGrid(bullets, bulletGrid);
    updateGrid(enemies, enemyGrid);
    timeSinceLastUpdate = 0.0;
  }
}
