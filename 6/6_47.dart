EventBus().subscribe(brickCollisionEvent, (Vector2 position) {
  brickCount--;
  _particleManager?.createParticleEffect(
    position: position,
    particleSize: 0.05,
    lifespan: 1,
  );
  if (brickCount == 0) {
    EventBus().publish(gameClearEvent, true);
    removeFromParent();
  }
});