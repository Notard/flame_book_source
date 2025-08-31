class MoleCharacter extends JumpComponent {
  GuITimerComponent? heightComponent;
//생략
  @override
  void onLoad() async {
//생략
    heightComponent = GuITimerComponent();
    heightComponent?.priority = 5;
    heightComponent?.position = Vector2(500, 50);
    EventBus().publish(addViewportEvent, heightComponent!);
  }

  @override
  void onRemove() {
//생략
    if (heightComponent != null) {
      EventBus().publish(removeViewportEvent, heightComponent!);
    }
  }

  @override
  void update(double dt) {
//생략
    double groundY = (position.y) / 160;
    heightComponent?.renderNumber(groundY);
  }
//생략
}
