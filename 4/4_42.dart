bool enableHit = false; // 때리는 것을 허용할지 여부
void actionSequence() async {
  double randomTime = Random().nextDouble() * 5000 + 3000;
  MoveToEffect moveOutEffect = MoveToEffect(
    Vector2(position.x, position.y - 100),
    DelayedEffectController(
      delay: randomTime / 1000,
      EffectController(duration: 0.4),
    ),
  );
  moveOutEffect.onComplete = () {
    enableHit = true;
  };
  MoveToEffect moveInEffect = MoveToEffect(
    Vector2(position.x, position.y),
    DelayedEffectController(
      delay: 1,
      EffectController(duration: 0.4),
    ),
  );
  SequenceEffect moveEffect = SequenceEffect([moveOutEffect, moveInEffect]);
  moveEffect.onComplete = () {
    actionSequence();
    enableHit = false;
  };
  add(moveEffect);
}
