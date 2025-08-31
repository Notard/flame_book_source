import 'package:flame/components.dart';
import 'package:flame_games/game_function.dart';

class BackgroundImage extends PositionComponent {
  SpriteComponent? spriteComponent;
  BackgroundImage({
    required this.fileName,
  });
  final String fileName;
  @override
  Future<void> onLoad() async {
    Vector2 screenSize = GameFunction().ratioSize();
    Vector2 center =
        GameFunction().calculatePositionInScreen(Vector2(0.5, 0.5));
    spriteComponent = SpriteComponent(
      sprite: await Sprite.load(fileName),
      size: screenSize,
      position: center,
      anchor: Anchor.center,
    );
    add(spriteComponent!);
    return super.onLoad();
  }

  @override
  void onGameResize(Vector2 gameSize) {
    super.onGameResize(gameSize);
//화면 크기가 변경되면 배경 이미지도 변경
    if (spriteComponent == null) return;
    Vector2 imagePosition =
        GameFunction().calculatePositionInScreen(Vector2(0.5, 0.5));
    Vector2 backgroundSize = GameFunction().ratioSize();
//배경 이미지를 다시 설정
    spriteComponent!.size = backgroundSize;
    spriteComponent!.position = imagePosition;
  }
}
