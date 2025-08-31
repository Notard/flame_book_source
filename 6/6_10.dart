void main() {
  Viewfinder viewport = Viewfinder();
  runApp(
    GameWidget(
      game: FlameGame(
        world: BreakBrickWorld(),
        camera: BreakBrickCamera(
          viewport: FixedResolutionViewport(
            resolution: Vector2(1080, 1920),
          ),
          viewfinder: viewport,
        ),
      ),
    ),
  );
}
