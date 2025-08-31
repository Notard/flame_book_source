@override
void onRemove() {
  bulletFireSubscription?.cancel();
  super.onRemove();
}
