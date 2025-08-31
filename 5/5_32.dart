moleCharacter = MoleCharacter();
moleCharacter?.gridPosition = Vector2(0, -6);

add(moleCharacter!);
moleCharacter?.priority = 4;

blockManagerComponent = BlockManagerComponent();
blockManagerComponent?.priority = 3;
add(blockManagerComponent!);

moleCharacter?.setBlockManagerComponent(blockManagerComponent);