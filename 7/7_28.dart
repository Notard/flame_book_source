final Queue<Bullet> _inactiveBullets = Queue<Bullet>(); // 비활성화된 총알
final Map<int, Bullet> _activeBullets = {}; // 활성화된 총알
final List<Bullet> _activeBulletsList = []; // 활성화된 총알 (List)
final double interval = 0.1;
double _timer = 0;
