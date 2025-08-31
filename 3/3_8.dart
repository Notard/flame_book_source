fadeOut.onComplete = () {
  EventBus().publish(mainMenuEvent, null);
};
