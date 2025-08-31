@override
void onLoad() async {
  TextPaint textPaint = TextPaint(
    style: TextStyle(
      color: BasicPalette.black.color,
      fontSize: 22,
    ),
  );
  TextComponent textComponent = TextComponent();
  textComponent.text = 'Game Start';
  textComponent.textRenderer = textPaint;
  SpriteComponent spriteComponent = SpriteComponent(
    sprite: await Sprite.load('trans_button.png'),
  );
  ImageTextButton imageTextButton = ImageTextButton(
    textComponent: textComponent,
    spriteComponent: spriteComponent,
  );
  imageTextButton.position = Vector2(10, 10);
  add(imageTextButton);
}
