class ImageTextButton extends PositionComponent with TapCallbacks {
  final TextComponent textComponent;
  final SpriteComponent spriteComponent;
  final Color spriteColor;

  ImageTextButton({
    required this.textComponent,
    required this.spriteComponent,
    required this.spriteColor,
  });
}
