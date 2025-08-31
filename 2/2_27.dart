@override
void onTapUp(TapUpEvent event) {
  spriteComponent?.paint = Paint();
  super.onTapUp(event);
  EventBus().publish(gameStartEvent, null);
  event.handled = true;
}
