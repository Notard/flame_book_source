import 'package:flame/components.dart';

class TitlePage extends PositionComponent {
  @override
  void onLoad() async {
    SpriteComponent title =
        SpriteComponent(sprite: await Sprite.load('digger_game_title.png'));
    title.position = Vector2(0, 0);
    title.anchor = Anchor.center;
    title.size = Vector2(1080, 1920);
    add(title);
  }
}
