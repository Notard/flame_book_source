double getGridYPosition(double gridX, double gridY) {
  double minGridY = 100;
  int blockKey = (gridX + 3).toInt() * 100;
  int startY = gridY.toInt() + 1;
  startY = startY < 0 ? 0 : startY;
  for (int y = startY; y < 100; y++) {
    if (blockMap.containsKey(blockKey + y)) {
      minGridY = y.toDouble();
      break;
    }
  }
  return minGridY;
}
