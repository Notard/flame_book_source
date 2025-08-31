import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flame/palette.dart';

class GuiBase extends PositionComponent {
  GuiBase({required super.priority});
  @override
  void onLoad() async {
    super.onLoad();
    anchor = Anchor.topLeft;
    size = Vector2(1080, 1920);
    position = Vector2(0, 0);
    Paint whiteWidhOpacity = BasicPalette.black.paint();
    whiteWidhOpacity.color = whiteWidhOpacity.color.withOpacity(0.5);
    RectangleComponent rectangle = RectangleComponent(
      size: Vector2(1080, 200),
      paint: whiteWidhOpacity,
    );
    rectangle.anchor = Anchor.topCenter;
    rectangle.position = Vector2(0, -960);
    add(rectangle);
  }
}
