import 'package:flame/components.dart';
import 'package:flame/events.dart';

class GameRectButton extends PositionComponent with TapCallbacks {
  GameRectButton({
    required this.spriteFileName,
    required this.buttonSize,
    required this.textComponent,
    this.onTapDownEvent,
    this.onTapUpEvent,
  });
  NineTileBoxComponent? nineTileBoxComponent;
  final String spriteFileName;
  final Vector2 buttonSize;
  final TextComponent textComponent;
  final Function? onTapDownEvent;
  final Function? onTapUpEvent;
  @override
  void onLoad() async {
    Sprite sprite = await Sprite.load(spriteFileName);
    NineTileBox nineTileBox = NineTileBox(
      sprite,
    );
    nineTileBoxComponent = NineTileBoxComponent(
      nineTileBox: nineTileBox,
      size: buttonSize,
      anchor: Anchor.center,
    );
    add(nineTileBoxComponent!);
    add(textComponent);
    anchor = Anchor.center;
  }

  @override
  void onTapDown(TapDownEvent event) {
    super.onTapDown(event);
    if (onTapDownEvent != null) {
      onTapDownEvent!();
    }
  }

  @override
  void onTapUp(TapUpEvent event) {
    super.onTapUp(event);
    if (onTapUpEvent != null) {
      onTapUpEvent!();
    }
  }

  @override
  void onTapCancel(TapCancelEvent event) {
    super.onTapCancel(event);
  }
}
