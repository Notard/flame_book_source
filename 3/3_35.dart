import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flame_games/game_rect_button.dart';
import 'package:flame_games/gray_background.dart';
import 'package:flutter/material.dart';

class SimplePopup extends PositionComponent with TapCallbacks {
  TextStyle? textStyle;
  final String text;
  TextStyle? closeTextStyle;
  SimplePopup({
    this.textStyle,
    required this.text,
    this.closeTextStyle,
  });
  TextStyle getDefaultTextStyle() {
    return const TextStyle(
      fontFamily: '온글잎 은별',
      fontSize: 90.0,
      fontWeight: FontWeight.bold,
      color: Colors.orange,
      shadows: <Shadow>[
        Shadow(
          blurRadius: 2.0,
          color: Colors.black,
          offset: Offset(3.0, 3.0),
        ),
      ],
    );
  }

  TextStyle getDefaultCloseTextStyle() {
    return const TextStyle(
      fontFamily: '온글잎 은별',
      fontSize: 50.0,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
      shadows: <Shadow>[
        Shadow(
          blurRadius: 2.0,
          color: Colors.black,
          offset: Offset(3.0, 3.0),
        ),
      ],
    );
  }

  @override
  void onLoad() async {
    super.onLoad();
//이 클래스를 호출하는 코드
    GrayBackground grayBackground = GrayBackground();
    grayBackground.size = size;
    add(grayBackground);
    textStyle ??= getDefaultTextStyle();
    closeTextStyle ??= getDefaultCloseTextStyle();
    TextComponent textComponent = TextComponent(
      text: text,
      position: Vector2.zero(),
      anchor: Anchor.center,
      textRenderer: TextPaint(
        style: textStyle,
      ),
    );
    add(textComponent);
    TextPaint textPaint = TextPaint(
      style: closeTextStyle,
    );
    TextComponent buttonTextComponent = TextComponent();
    buttonTextComponent.textRenderer = textPaint;
    buttonTextComponent.text = '닫기';
    buttonTextComponent.anchor = Anchor.center;
    GameRectButton gameRectButton = GameRectButton(
      spriteFileName: 'trans_button.png',
      buttonSize: Vector2(250, 100),
      textComponent: buttonTextComponent,
      onTapDownEvent: () {
        parent?.remove(this);
      },
    );
    gameRectButton.anchor = Anchor.center;
    gameRectButton.position = Vector2(0, size.y / 2 - 100);
    add(gameRectButton);
  }

  @override
  void onTapDown(TapDownEvent event) {
    super.onTapDown(event);
    parent?.remove(this);
    event.handled = true;
  }
}
