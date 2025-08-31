void onGameItemInactivateEvent(GameItemInactivateEvent event) {
  if (event.gameItemType == GameItemType.speedUp) {
    _fireInterval -= event.itemValue;
  }
}
