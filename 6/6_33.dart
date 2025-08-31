EventBus().subscribe(ballOutEvent, (_) {
  ballCount--;
    if (ballCount == 0) {
    //게임 오버
  } else {
    _ball = Ball(initialPosition: Vector2(0, -1.5));
    add(_ball!);
    isStarted = false;
  }
});