RoundedRectangleComponent(
  borderRadius: 60,
  color: Colors.grey,
  size: buttonSize,
  anchor: Anchor.center,
);
overlay?.position = Vector2(
  buttonSize.x / 2,
  buttonSize.y / 2,
);
overlay?.setTransparentColor(0);
add(overlay!);