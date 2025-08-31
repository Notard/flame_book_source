const String gameStartEvent = 'gameStart';

class EventBus {
  static final EventBus _instance = EventBus._internal();
  factory EventBus() {
    return _instance;
  }
  EventBus._internal();
  final Map<String, List<Function>> _listeners = {};
  void subscribe(String eventName, Function callback) {
    if (!_listeners.containsKey(eventName)) {
      _listeners[eventName] = [];
    }
    _listeners[eventName]!.add(callback);
  }

  void unsubscribe(String eventName, Function callback) {
    if (_listeners.containsKey(eventName)) {
      _listeners[eventName]!.remove(callback);
    }
  }

  void publish(String eventName, [dynamic data]) {
    if (_listeners.containsKey(eventName)) {
      for (var callback in _listeners[eventName]!) {
        callback(data);
      }
    }
  }
}
