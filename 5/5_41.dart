// 블록을 확률에 따라 선택하는 함수
int selectBlock() {
  double randomValue = Random().nextDouble(); // 0.0에서 1.0 사이의 난수 생성
  for (int i = 0; i < cumulativeProbabilities.length; i++) {
    if (randomValue < cumulativeProbabilities[i]) {
      return i;
    }
  }
  return 5; // 이론상 도달할 수 없음(모든 확률의 합은 1)
}
