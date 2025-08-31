StartEffect? _starEffect;
@override
void onLoad() async {
  super.onLoad();
  anchor = Anchor.center;
  _hammerSprite = await Sprite.load('hammer.png');
  _starEffect = StartEffect(priority: priority + 1);
  add(_starEffect!);
}

@override
bool onTapDown(TapDownEvent event) {
  _hitHammer(event.localPosition + Vector2(150, 0));
  _hammerSpriteComponent!.position = event.localPosition + Vector2(150, 0);
  _starEffect!.hitStar(event.localPosition);
  return true;
}
