int damaged(int damage) {
  nowHp -= damage;
  if (nowHp < 0) {
    nowHp = 0;
  }
  hpTextComponent?.text = nowHp.toString();

  if (nowHp <= 0) {
    EventBus().fire(GameItemInactivateEvent(
      gameItemType: type,
      itemValue: effectValue,
    ));
    removeFromParent();
  }
  return nowHp;
}
