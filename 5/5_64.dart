@override
void update(double dt) {
  super.update(dt);
  if (isGameOver) {
    return;
  }
  nowTime -= dt;
  if (nowTime <= 0) {
    showPopup(false);
  } else {
    timerComponent?.renderNumber(nowTime);
  }
}
