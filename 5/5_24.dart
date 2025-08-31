@override
void onLoad() {
  EventBus().subscribe(moveCameraEvent, (data) {
    if (data == null) {
      moveTo(Vector2.zero());
      _yPosition = 0;
    } else {
      PositionComponent target = data;
      if (target.y + 320 != _yPosition) {
        _yPosition = target.y + 320;
        moveTo(Vector2(0, _yPosition), speed: 1000);
      }
    }
  });
}
