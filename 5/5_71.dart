void showPopup() {
  _isSuccess = true;
  gameSuccessPopup = GamePopup(
    priority: 10,
    buttonText: '다시하기',
    eventName: mainMenuEvent,
    imageName: 'game_success.png',
  );
  gameSuccessPopup?.position = Vector2(540, 960);
  EventBus().publish(addViewportEvent, gameSuccessPopup!);
}
