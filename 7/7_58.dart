void inactivate(int index) {
  if (_activeBullets.containsKey(index)) {
    Bullet bullet = _activeBullets.remove(index)!;
    _inactiveBullets[index] = bullet;
  }
}
