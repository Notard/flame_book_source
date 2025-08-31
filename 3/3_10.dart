Vector2 _canvasSize = Vector2(0, 0);
void setCanvasSize(Vector2 size) {
  _canvasSize = size;
}

Vector2 getCanvasSize() {
  return _canvasSize;
}

Vector2 ratioSize() {
  Vector2 desiredSize = Vector2(9, 16);
  Vector2 canvasSize = getCanvasSize();
  double scaleToFitWidth = canvasSize.x / desiredSize.x;
  double scaleToFitHeight = canvasSize.y / desiredSize.y;
  double scaleFactor =
      scaleToFitWidth < scaleToFitHeight ? scaleToFitWidth : scaleToFitHeight;
  Vector2 newSize = desiredSize * scaleFactor;
  return newSize;
}
