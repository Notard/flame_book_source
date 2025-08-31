// // 화면 아래로 완전히 사라지면 다시 위로 이동
if (background1!.position.y >= backgroundHeight) {
  background1!.position.y = -backgroundHeight + 1920;
}

if (background2!.position.y >= backgroundHeight) {
  background2!.position.y = -backgroundHeight + 1920;
}