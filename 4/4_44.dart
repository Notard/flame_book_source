SpriteComponent? mole;
SpriteComponent? hitMole;
void addMole() async {
  String spriteFileName = 'mole_normal.png';
  Sprite sprite = await Sprite.load(spriteFileName);
  size = Vector2(230, 306);
  mole = SpriteComponent(
    sprite: sprite,
    size: size,
    anchor: Anchor.topLeft,
  );
  add(mole!);
  spriteFileName = 'mole_hit.png';
  sprite = await Sprite.load(spriteFileName);
  hitMole = SpriteComponent(
    sprite: sprite,
    size: size,
    anchor: Anchor.topLeft,
  );
  add(hitMole!);
  hitMole?.opacity = 0;
  anchor = Anchor.center;
  actionSequence();
}

@override
void onTapDown(TapDownEvent event) {
  super.onTapDown(event);
  if (enableHit == true) {
    hitMole?.opacity = 1;
    mole?.opacity = 0;
    enableHit = false;
  }
  event.handled = true;
}

void actionSequence() async {
  hitMole?.opacity = 0;
  mole?.opacity = 1;
//아래는 원래 만들었던 코드
}
