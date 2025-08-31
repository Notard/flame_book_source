class GameItemInactivateEvent {
  final GameItemType gameItemType;
  final double itemValue;
  GameItemInactivateEvent(
      {required this.gameItemType, required this.itemValue});
}
