@override
bool onTapDown(TapDownEvent event) {
  _hitHammer(event.localPosition + Vector2(150, 0));
  _hammerSpriteComponent!.position = event.localPosition + Vector2(150, 0);
  _starEffect!.hitStar(event.localPosition);
  event.continuePropagation = true;
  return false;
}
