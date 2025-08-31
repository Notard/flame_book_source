double getGridYPosition(double gridX) {
  double minGridY = 100;
  int blockKey = (gridX + 3).toInt() * 100;
  for (int y = 0; y < 100; y++) {
    if (blockMap.containsKey(blockKey + y)) {
      minGridY = y.toDouble();
      break;
    }
  }
  return minGridY;
}
