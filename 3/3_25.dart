void main() {
  runApp(
    GameWidget(
      game: FlameGame(
        world: GameFrame(),
        camera: CameraComponent(
          viewport: FixedSizeViewport(1080, 1920),
        ),
      ),
    ),
  );
}
