// 같은 색의 이웃 블록을 파괴하는 함수
void destroyAdjacentBlocks(Vector2 position, BlockType blockType) {
  List<Vector2> directions = [
    Vector2(0, -1), // 상
    Vector2(0, 1), // 하
    Vector2(-1, 0), // 좌
    Vector2(1, 0), // 우
  ];
  for (Vector2 direction in directions) {
    Vector2 neighborPos = position + direction;
    int neighborKey = (neighborPos.x + 3).toInt() * 100 + neighborPos.y.toInt();
    BlockComponent? neighborBlock = blockMap[neighborKey];
    if (neighborBlock != null && neighborBlock.blockType == blockType) {
      blockMap.remove(neighborBlock.blockKey);
      neighborBlock.destory(); // 이웃 블록 파괴
// 재귀적으로 이웃 블록 검사 및 파괴
      destroyAdjacentBlocks(neighborPos, blockType);
    }
  }
}
