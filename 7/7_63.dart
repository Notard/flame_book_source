void damaged(int damage) {
  hp -= damage;
  if (hp <= 0) {
    removeFromParent();
  }
}
