@override
void onTapUp(TapUpEvent event) {
  spriteComponent?.paint = Paint();
  super.onTapUp(event);
  event.handled = true;
}
