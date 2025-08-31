EventBus().subscribe(brickCollisionEvent, (_) {
  brickCount--;
  if (brickCount == 0) {
  // 모든 벽돌이 파괴됨 - 게임 클리어
  }
});