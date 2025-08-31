@override
void onLoad() async {
  SpriteComponent backgroundImage = SpriteComponent(
    sprite: await Sprite.load('mole_game_background.png'),
    size: Vector2(1080, 1920),
    position: Vector2(0, 0),
    anchor: Anchor.center,
  );
  add(backgroundImage);
  addMoleLine(740, 360, 1);
  addMoleLine(1080, 360, 2);
  addMoleLine(1420, 360, 3);
  hammer = Hammer(priority: 10);
  add(hammer!);
  GuiBase guiBase = GuiBase(priority: 100);
  add(guiBase);
  EventBus().subscribe(nowScoreEvent, (int nowScore) {
    if (nowScore >= maxScore) {
      EventBus().publish(gameSuccessEvent, true);
    }
  });
  EventBus().subscribe(gameOverEvent, (_) {
    GameOver gameOver = GameOver(
        priority: 100,
        callPage: this,
        buttonText: '메인 메뉴로',
        eventName: mainMenuEvent);
    add(gameOver);
  });
//gameSuccessEvent
  EventBus().subscribe(gameSuccessEvent, (_) {
    GameSuccess gameSuccess = GameSuccess(
      priority: 100,
      callPage: this,
      buttonText: '메인 메뉴로',
      eventName: mainMenuEvent,
    );
    add(gameSuccess);
  });
}
