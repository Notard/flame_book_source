//TitlePage에서 fadeOut effect가 끝나면 mainMenuEvent를 발생시킴
fadeOut.onComplete = () {
  removeFromParent();
  EventBus().publish(mainMenuEvent, null);
};
