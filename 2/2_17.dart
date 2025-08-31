static final EventBus _instance = EventBus._internal();
factory EventBus() {
  return _instance;
}
EventBus._internal();