class GrayBackground extends PositionComponent {
  @override
  void onLoad() async {
    super.onLoad();
    Paint gradientPaint = Paint();
    gradientPaint.shader = LinearGradient(
      colors: [Colors.grey.shade300, Colors.grey.shade600],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).createShader(Rect.fromLTWH(0, 0, size.x, size.y));
    RectangleComponent rectangleComponent = RectangleComponent(
      size: size,
      paint: gradientPaint,
      anchor: Anchor.center,
    );
    RectangleComponent shadowComponent = RectangleComponent(
      position: Vector2(20, 20),
      size: Vector2(size.x + 10, size.y + 10),
      paint: Paint()..color = Colors.black.withOpacity(0.6),
      anchor: Anchor.center,
    );
    shadowComponent.priority = 1;
    rectangleComponent.priority = 2;
    add(rectangleComponent);
    add(shadowComponent);
  }
}
