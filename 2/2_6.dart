@override
void onLoad() async {
  TextComponent textComponent = TextComponent(text: 'Hello, Flame!');
  textComponent.anchor = Anchor.topLeft;
  textComponent.x = size.x / 2;
  textComponent.y = size.y / 2;
  add(textComponent);
}
