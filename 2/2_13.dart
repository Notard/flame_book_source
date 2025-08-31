@override
void onLoad() async {
  SpriteComponent sprite = SpriteComponent();
  sprite.sprite = await loadSprite('mole.png');
  sprite.position = Vector2(100, 100);
  sprite.anchor = Anchor.center;
  TextComponent text = TextComponent(text: 'Hello, Flame!');
  text.anchor = Anchor.topCenter;
  text.x = size.x / 2;
  text.y = 232.0;
  add(text);
  add(sprite);
}
