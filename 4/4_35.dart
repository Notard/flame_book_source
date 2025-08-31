import 'package:flutter/material.dart';

class MoleLine extends PositionComponent {
  MoleLine({
    required super.priority,
    required this.spriteFileName,
    required this.yPos,
    required this.clipHeight,
  });
  final String spriteFileName;
  final double yPos;
  final double clipHeight;
  final Vector2 holeSize = Vector2.all(350);
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
    cutImage.priority = 4;
    add(cutImage);
    addHole(Vector2(20, 0));
  }

  void addHole(Vector2 holePosition) async {
    String spriteFileName = 'hole.png';
    Vector2 shadowPosition =
        Vector2(holePosition.x + 30, holePosition.y - holeSize.y / 2 + 30);
    SpriteComponent hole =
        await loadHalfSprite(spriteFileName, true, holePosition);
    SpriteComponent hole2 =
        await loadHalfSprite(spriteFileName, false, holePosition);
    add(hole);
    add(hole2);
    addShadow(
        shadowPosition: shadowPosition,
        priority: 3,
        holeFileName: spriteFileName);
  }

  Future<SpriteComponent> loadHalfSprite(
      String spriteFileName, bool upperHalf, Vector2 holePosition) async {
    Sprite sprite = await Sprite.load(spriteFileName);
    Vector2 size = sprite.srcSize;
    double halfHeight = size.y / 2;
    double halfPosition = holeSize.y / 2;
    if (upperHalf == true) {
      sprite.srcPosition = Vector2(0, 0);
    } else {
      sprite.srcPosition = Vector2(0, halfHeight);
    }
    sprite.srcSize = Vector2(size.x, halfHeight);
    holePosition.y += upperHalf ? -halfPosition : halfPosition;
    return SpriteComponent(
      sprite: sprite,
      size: holeSize - Vector2(0, halfPosition),
      position: holePosition,
      anchor: Anchor.topLeft,
      priority: upperHalf ? 1 : 5,
    );
  }

  void addShadow(
      {required Vector2 shadowPosition,
      required String holeFileName,
      required int priority}) async {
    Sprite sprite = await Sprite.load(holeFileName);
    SpriteComponent shadow = SpriteComponent(
      sprite: sprite,
      size: Vector2(holeSize.x, holeSize.y),
      position: shadowPosition,
      anchor: Anchor.topLeft,
      priority: 3,
    );
    shadow.paint = Paint()
      ..colorFilter = const ColorFilter.mode(Colors.black, BlendMode.modulate)
      ..color = Colors.black.withOpacity(0.5);
    add(shadow);
  }
}
