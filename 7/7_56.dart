enemyDamageSubscription =
EventBus().on<EnemyDamageEvent>(onEnemyDamageEvent);
void onEnemyDamageEvent(EnemyDamageEvent event) {
inactivate(event.bulletID);
}