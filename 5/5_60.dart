guiBackground = SpriteComponent(
  sprite: await Sprite.load('gui_background.png'),
  size: Vector2(1080, 150),
  position: Vector2(0, 0),
);
guiBackground?.anchor = Anchor.topLeft;
guiBackground?.priority = 4;
EventBus().publish(addViewportEvent, guiBackground!);
LEVEL