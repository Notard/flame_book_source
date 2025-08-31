onTapUpEvent: () {
  removeFromParent();
EventBus().publish(gameStartEvent);
},