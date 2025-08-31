Vector2 calculatePositionInScreen(Vector2 normalizedPosition) {
  Vector2 screenSize = getCanvasSize(); // 실제 화면 크기를 가져옵니다.
  Vector2 ratio = ratioSize(); // 9:16 비율로 조정된 화면 크기를 계산합니다.
// 가상의 9:16 영역이 실제 화면 중앙에 위치하도록 조정합니다.
  Vector2 offset = (screenSize - ratio) / 2;
// normalizedPosition을 사용하여 9:16 비율 영역 안에서의 실제 위치를 계산합니다.
  Vector2 positionInRatio = Vector2(
    normalizedPosition.x * ratio.x + offset.x,
    normalizedPosition.y * ratio.y + offset.y,
  );
  return positionInRatio;
}
