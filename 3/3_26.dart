void main() {
  runApp(
    GameWidget(
      game: FlameGame(
        world: GameFrame(),
        camera: CameraComponent(
          viewport: FixedAspectRatioViewport(
            aspectRatio: 9 / 16,
          ),
        ),
      ),
    ),
  );
}
