@override
void onLoad() async {
  TextComponent textComponent = TextComponent(text: 'Hello, Flame!');
  textComponent.anchor = Anchor.center;
  textComponent.x = size.x / 2;
  textComponent.y = size.y / 2;
  textComponent.scale = Vector2(2, 2);
  add(textComponent);
}
