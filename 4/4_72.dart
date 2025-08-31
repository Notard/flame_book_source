EventBus().subscribe(gameOverEvent, (_) {
  GameOver gameOver = GameOver(
  priority: 100,
  callPage: this,
  buttonText: '메인 메뉴로',
  eventName: mainMenuEvent);
  add(gameOver);
});