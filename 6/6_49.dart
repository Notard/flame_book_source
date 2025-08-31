EventBus().subscribe(gameClearEvent, (bool isSuccess) {
  EventBus().publish(cameraZoomEvent, 1.0);
  GameClear gameClear = GameClear(isSuccess: isSuccess);
  add(gameClear);
});