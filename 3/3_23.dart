void main() {
  runApp(
    GameWidget(
      game: FlameGame(
        world: GameFrame(),
        camera: CameraComponent(
          viewport: MaxViewport(),
        ),
      ),
    ),
  );
}
