void destory() {
  if (blockType == BlockType.item1) {
    EventBus().publish(changeLeftTimeEvent, 10.0);
  }
  if (blockType == BlockType.item2) {
    EventBus().publish(addAttackPowerEvent, 2);
  }
  OpacityEffect fadeOut = OpacityEffect.to(
    0.0,
    EffectController(duration: 0.5),
    onComplete: () {
      removeFromParent();
    },
  );
  blockSprite!.add(fadeOut);
}
