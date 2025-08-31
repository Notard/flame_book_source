class GameMainPage extends PositionComponent {
  @override
  void onLoad() async {
    SpriteComponent backgroundImage = SpriteComponent(
      sprite: await Sprite.load('main_background.png'),
      size: Vector2(1080, 1920),
      position: Vector2(0, 0),
      anchor: Anchor.center,
    );
    add(backgroundImage);
  }
}

class GameFrame extends World {
  @override
  void onLoad() async {
    EventBus().subscribe(mainMenuEvent, (_) {});
    add(GameMainPage());
    return super.onLoad();
  }
}

void main() {
  runApp(
    GameWidget(
      game: FlameGame(
        world: GameFrame(),
        camera: CameraComponent(
          viewport: FixedResolutionViewport(
            resolution: Vector2(1080, 1920),
          ),
        ),
      ),
    ),
  );
}
