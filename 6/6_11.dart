class BreakBrickWorld extends World {
  @override
  void onLoad() async {
    TitlePage titlePage = TitlePage();
    add(titlePage);
    EventBus().subscribe(mainMenuEvent, (_) {
      EventBus().publish(cameraZoomEvent, 1.0);
      MainMenuPage mainMenuPage = MainMenuPage();
      add(mainMenuPage);
    });
//gamePageEvent
    EventBus().subscribe(gamePageEvent, (_) {
      EventBus().publish(cameraZoomEvent, 100.0);
      GamePage gamePage = GamePage();
      add(gamePage);
    });
    super.onLoad();
  }
}
