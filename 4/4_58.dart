//Mole 클래스
@override
void onTapDown(TapDownEvent event) {
  super.onTapDown(event);
  if (enableHit == true) {
    hitMole?.opacity = 1;
    mole?.opacity = 0;
    enableHit = false;
    EventBus().publish(plusScoreEvent, 1);
  }
  event.handled = true;
}
