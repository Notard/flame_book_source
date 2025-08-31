fadeInOutSequence.onComplete = () {
  removeFromParent();
  EventBus().fire(ChangePageEvent(pageType: PageType.main));
};