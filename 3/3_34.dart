import 'package:flame/components.dart';
import 'package:flutter/material.dart';

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
    add(rectangleComponent);
  }
}
// GrayBackground클래스를 호출하는 코드
// GrayBackground grayBackground = GrayBackground();
// grayBackground.size = size;
// add(grayBackground);
