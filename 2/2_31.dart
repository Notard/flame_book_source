@override
void onLoad() async {
  add(spriteComponent);
  add(textComponent);
  spriteComponent.paint.colorFilter =
      ColorFilter.mode(spriteColor, BlendMode.modulate);
  size = Vector2(
    spriteComponent.size.x,
    spriteComponent.size.y,
  );
  textComponent.position = Vector2(
    (spriteComponent.width) / 2,
    (spriteComponent.height) / 2,
  );
  textComponent.anchor = Anchor.center;
}
