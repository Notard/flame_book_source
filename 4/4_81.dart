MoleParent? mole;
Vector2 molePosition = Vector2(holePosition.x + holeSize.x / 2 + 10, 0);
int molePriority = 3;
int moleType = Random().nextInt(3);
if (moleType == 0) {
    mole = RedMole(
    position: molePosition,
    priority: molePriority,
  );
} else if (moleType == 1) {
  mole = BlueMole(
    position: molePosition,
    priority: molePriority,
  );
} else if (moleType == 2) {
  mole = BrownMole(
    position: molePosition,
    priority: molePriority,
  );
}
add(mole!);