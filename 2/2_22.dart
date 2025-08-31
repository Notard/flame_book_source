SpriteComponent? spriteComponent;
@override
void onLoad() async {
  spriteComponent = SpriteComponent(
    sprite: await Sprite.load(spriteFileName),
  );
  if (spriteComponent != null) {
    size = spriteComponent!.size;
    add(spriteComponent!);
  }
}
