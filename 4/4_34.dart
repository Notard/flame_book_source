import 'package:flame/components.dart';

class MoleLine extends PositionComponent {
  MoleLine({
    required super.position,
    required super.priority,
    required this.spriteFileName,
    required this.yPos,
    required this.clipHeight,
  });
  final String spriteFileName;
  final double yPos;
  final double clipHeight;
  @override
  Future<void> onLoad() async {
    Sprite sprite = await Sprite.load(spriteFileName);
    Vector2 size = sprite.srcSize;
    double imageYAspects = size.y / 1920;
    size = Vector2(size.x, clipHeight);
    sprite.srcSize = Vector2(size.x, clipHeight * imageYAspects);
    sprite.srcPosition = Vector2(0, yPos * imageYAspects);
    anchor = Anchor.topLeft;
    SpriteComponent cutImage = SpriteComponent(
      sprite: sprite,
      size: Vector2(1080, clipHeight),
    );
    position = Vector2(-540, yPos - 960);
    add(cutImage);
  }
}
