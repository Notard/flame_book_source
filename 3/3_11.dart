void onLoad() async {
  super.onLoad();
  GameFunction().setCanvasSize(canvasSize);
  EventBus().subscribe(mainMenuEvent, (_) {
    removeAll(children.whereType<TitlePage>()); // Title 컴포넌트 제거
// 메인 메뉴로 이동
  });
  TitlePage titlePage = TitlePage();
  add(titlePage);
}
