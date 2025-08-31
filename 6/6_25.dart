class GamePage extends Forge2DGame with TapCallbacks {
GamePage() : super(contactListener: GameContactListener());