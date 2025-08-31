void setFadeEffect(PositionComponent component, bool makeEvent) {
  OpacityEffect fadeIn = OpacityEffect.to(
    1.0,
    EffectController(duration: 3.0),
  );
  OpacityEffect fadeOut = OpacityEffect.to(
    0.0,
    DelayedEffectController(
      delay: 0.1,
      EffectController(duration: 3.0),
    ),
  );
  SequenceEffect fadeInOutSequence = SequenceEffect([fadeIn, fadeOut]);
  component.add(fadeInOutSequence);
  if (makeEvent == true) {
    fadeInOutSequence.onComplete = () {};
  }
}
