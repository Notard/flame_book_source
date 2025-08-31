@override
void update(double dt) {
  nowTime -= dt;
  if (nowTime <= 0) {
  } else {
    timerComponent?.renderNumber(nowTime);
  }
}
