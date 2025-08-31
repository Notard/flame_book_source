hpUpdateTimer += dt;
if (hpUpdateTimer >= 10) {
  nowMaxHp += 4;
  hpUpdateTimer = 0;
}