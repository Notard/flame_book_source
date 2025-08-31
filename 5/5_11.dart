import 'package:flame/components.dart';

class MainMenuPage extends PositionComponent {
  @override
  void onLoad() async {
    SpriteComponent background = SpriteComponent();
    background.sprite = await Sprite.load('main_page_background.png');
    background.size = Vector2(1080, 1920);
    background.position = Vector2(0, 0);
    background.anchor = Anchor.center;
    add(background);
  }
}
