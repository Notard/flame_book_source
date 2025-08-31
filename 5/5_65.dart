void showPopup() {
  isGameOver = true;
  gameOverPopup = GamePopup(
    priority: 10,
    buttonText: '다시하기',
    eventName: mainMenuEvent,
    imageName: 'game_over.png',
  );
  EventBus().publish(addViewportEvent, gameOverPopup!);
}
