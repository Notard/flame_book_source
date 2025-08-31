// 활성화한 총알 리스트
class ActivateBulletListEvent {
  final List<PositionComponent> bullets;
  ActivateBulletListEvent({required this.bullets});
}

// 활성화한 적 리스트
class ActivateEnemyListEvent {
  final List<PositionComponent> enemies;
  ActivateEnemyListEvent({required this.enemies});
}
