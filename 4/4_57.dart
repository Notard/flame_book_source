class GuiBase extends PositionComponent {
  GuiBase({required super.priority});
  NumberDisplay? _scoreDisplay;
  NumberDisplay? _timeDisplay;
  int nowScore = 0;
  bool _isGameOver = false;
  @override
  void onLoad() async {
    super.onLoad();
//생략
    EventBus().subscribe(plusScoreEvent, (int addScore) {
      nowScore += addScore;
      _scoreDisplay?.setScore(nowScore);
    });
  }
}
