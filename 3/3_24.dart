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
