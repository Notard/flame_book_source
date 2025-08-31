enum PageType {
  title,
  main,
  game,
  gameOver,
}

class ChangePageEvent {
  final PageType pageType;
  ChangePageEvent({required this.pageType});
}
