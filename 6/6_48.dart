EventBus().subscribe(ballOutEvent, (_) {
  ballCount--;
  if (ballCount == 0) {
  //게임 오버
    EventBus().publish(gameClearEvent, false);
    removeFromParent();
  } else {
    _ball = Ball(initialPosition: Vector2(0, -1.5));
    add(_ball!);
    isStarted = false;
  }
  });
  EventBus().subscribe(brickCollisionEvent, (Vector2 position) {
    brickCount--;
    _particleManager?.createParticleEffect(
    position: position,
    particleSize: 0.05,
    lifespan: 1,
  );
  if (brickCount == 0) {
    // 모든 벽돌이 파괴됨 - 게임 클리어
    EventBus().publish(gameClearEvent, true);
    removeFromParent();
  }
});