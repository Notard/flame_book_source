class GuiBase extends PositionComponent {
//생략
  @override
  void onLoad() async {
//생략
    EventBus().subscribe(plusScoreEvent, (int addScore) {
      nowScore += addScore;
      _scoreDisplay?.setScore(nowScore);
      EventBus().publish(nowScoreEvent, nowScore);
    });
  }
//생략
}
