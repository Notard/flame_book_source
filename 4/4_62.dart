class GamePage extends PositionComponent {
final int maxScore = 100;
final int maxTime = 30;
//생략
@override
void onLoad() async {
//생략
EventBus().subscribe(nowScoreEvent, (int nowScore) {
  if (nowScore >= maxScore) {
    EventBus().publish(gameSuccessEvent, true);
  }
});
}