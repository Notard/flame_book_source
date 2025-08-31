// 총알 발사
void fire(Vector2 position) {
  if (_inactiveBullets.isNotEmpty) {
    Bullet bullet = _inactiveBullets.removeFirst(); // 비활성화 큐에서 꺼냄
    bullet.activate(position, damage); // 총알 활성화
    _activeBullets[bullet.index] = bullet; // 활성화 Map에 추가
    _activeBulletsList.clear();
    _activeBulletsList.addAll(_activeBullets.values);
  }
}

// 총알 비활성화
void inactivate(int index) {
  if (_activeBullets.containsKey(index)) {
    Bullet bullet = _activeBullets.remove(index)!; // 활성화 Map에서 제거
    bullet.inactivate(); // 총알 비활성화 처리
    _inactiveBullets.addLast(bullet); // 비활성화 큐에 추가
    _activeBulletsList.clear();
    _activeBulletsList.addAll(_activeBullets.values);
  }
}
