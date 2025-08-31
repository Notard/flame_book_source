void onGameItemInactivateEvent(GameItemInactivateEvent event) {
  if (event.gameItemType == GameItemType.powerUp) {
    damage += event.itemValue.toInt();
  }
}
