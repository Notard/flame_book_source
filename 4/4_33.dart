SpriteComponent upHole =
  await loadHalfSprite(spriteFileName, true, Vector2.all(0), 1);
SpriteComponent downHole =
  await loadHalfSprite(spriteFileName, false, Vector2(0, size.y / 2), 5);
add(upHole);
add(downHole);