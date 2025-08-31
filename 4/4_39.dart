//GamePage의 onLoad 함수에서.
addMoleLine(740, 360, 1);
addMoleLine(1080, 360, 2);
addMoleLine(1420, 360, 3);
// 가로 한 줄을 추가하는 함수
void addMoleLine(double yPos, double clipHeight, int priority) {
  MoleLine moleLine = MoleLine(
    priority: priority,
    clipHeight: clipHeight,
    spriteFileName: 'mole_game_background.png',
    yPos: yPos,
  );
add(moleLine);