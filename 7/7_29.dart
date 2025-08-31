void loadBullet() {
  for (int i = 0; i < 100; i++) {
    Bullet bullet = Bullet(index: i, damage: damage);
    add(bullet);
    _inactiveBullets.addLast(bullet);
  }
}
