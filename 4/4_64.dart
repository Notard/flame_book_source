void update(double dt) {
  _nowTime -= dt;
  if (_isGameOver == false) {
    _timeDisplay?.setScore(_nowTime.toInt());
  } else {
    _timeDisplay?.setScore(0);
    return;
  }
  if (_nowTime <= 0) {
    _nowTime = 0;
    _isGameOver = true;
    EventBus().publish(gameOverEvent);
  }
  super.update(dt);
}
