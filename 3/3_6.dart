import 'package:flame/game.dart';
import 'package:flame_games/event_bus.dart';
import 'package:flame_games/title.dart';

class GameFrame extends FlameGame {
  @override
  void onLoad() async {
    EventBus().subscribe(mainMenuEvent, (_) {
      removeAll(children.whereType<TitlePage>()); // Title 컴포넌트 제거
// 메인 메뉴로 이동
    });
    TitlePage titlePage = TitlePage();
    add(titlePage);
  }
}
