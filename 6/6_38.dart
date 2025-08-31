BrickManager brickManager = BrickManager(
  game: this,
  rows: rows,
  columns: columns,
  brickSize: brickSize,
  startPosition: startPosition,
);
add(brickManager);
brickCount = rows * columns;