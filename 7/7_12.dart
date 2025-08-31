background1 = GameBackgroundSprite(
  spriteName: 'game_back.png', isVerticalFlip: false);

background2 =
  GameBackgroundSprite(spriteName: 'game_back.png', isVerticalFlip: true);

await background1?.loadSprite();
await background2?.loadSprite();

background1?.position = Vector2(0, 960);
background2?.position = Vector2(0, -background2!.spriteHeight + 960);