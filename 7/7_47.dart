// 위치를 그리드 블록 인덱스로 변환
int getCellIndex(Vector2 position) {
  int x = (position.x / gridSize).floor();
  int y = (position.y / gridSize).floor();
  return x + y * 10000; // 고유한 인덱스 계산
}
