@override
void onRemove() {
  super.onRemove();
  EventBus().unsubscribe(changeLeftTimeEvent, changeTime);
  EventBus().publish(removeViewportEvent, timerComponent!);
}
