@override
void onTapDown(TapDownEvent event) {
  spriteComponent.paint = Paint();
  Color mixedColor = Color.lerp(spriteColor, Colors.grey, 0.5)!;
  spriteComponent.paint.colorFilter =
      ColorFilter.mode(mixedColor, BlendMode.modulate);
  super.onTapDown(event);
  event.handled = true;
}

@override
void onTapUp(TapUpEvent event) {
  spriteComponent.paint.colorFilter =
      ColorFilter.mode(spriteColor, BlendMode.modulate);
  super.onTapUp(event);
  EventBus().publish(gameStartEvent, null);
  event.handled = true;
}
