import 'package:flame/game.dart';

class GameFunction {
//singleton
  static final GameFunction _singleton = GameFunction._internal();
  factory GameFunction() {
    return _singleton;
  }
  GameFunction._internal();
}
