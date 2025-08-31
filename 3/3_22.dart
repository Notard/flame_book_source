class ImageTester extends PositionComponent {
  @override
  void onLoad() async {
    SpriteComponent background = SpriteComponent(
      sprite: await Sprite.load('main_background.png'),
      size: Vector2(1080, 1920),
      position: Vector2(0, 0),
      anchor: Anchor.center,
    );
    add(background);
    return super.onLoad();
  }
}

class GameFrame extends World {
  @override
  void onLoad() async {
    add(ImageTester());
    return super.onLoad();
  }
}
