@override
void onTapDown(TapDownEvent event) {
  spriteComponent?.paint = Paint();
  spriteComponent?.paint.colorFilter =
      const ColorFilter.mode(Colors.grey, BlendMode.modulate);
  super.onTapDown(event);
  event.handled = true;
}
