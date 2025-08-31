timerComponent = GuITimerComponent();
timerComponent?.priority = 5;
timerComponent?.position = Vector2(100, 50);

EventBus().publish(addViewportEvent, timerComponent!);