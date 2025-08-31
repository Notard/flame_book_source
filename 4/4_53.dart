void addTimeImage() async {
  Sprite timeImage = await Sprite.load('time_image.png');
  double aspectRatio = timeImage.originalSize.x / timeImage.originalSize.y;
  SpriteComponent timeImageComponent = SpriteComponent(
    sprite: timeImage,
    size: Vector2(90 * aspectRatio, 90),
    position: Vector2(-520, -900),
  );
  timeImageComponent.priority = 2;
  timeImageComponent.anchor = Anchor.topLeft;
  add(timeImageComponent);
}

void addScoreImage() async {
  Sprite scoreImage = await Sprite.load('score_image.png');
  double aspectRatio = scoreImage.originalSize.x / scoreImage.originalSize.y;
  SpriteComponent scoreImageComponent = SpriteComponent(
    sprite: scoreImage,
    size: Vector2(90 * aspectRatio, 90),
    position: Vector2(0, -900),
  );
  scoreImageComponent.priority = 2;
  scoreImageComponent.anchor = Anchor.topLeft;
  add(scoreImageComponent);
}
