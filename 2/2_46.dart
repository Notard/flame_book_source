Vector2 chracterPosition = Vector2(1, 1);
Vector2 targetPosition = Vector2(3, 1);
Vector2 direction = targetPosition - chracterPosition;
double length = direction.length; //길이
Vector2 normalizedDirection = direction.normalized(); //벡터 정규화
print(‘direction: $direction’);
print('length: $length');
print('normalizedDirection: $normalizedDirection');
print('normalizedDirection.length: ${normalizedDirection.length}');