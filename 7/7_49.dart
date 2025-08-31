// 그리드 갱신
void updateGrid(
  List<PositionComponent> components,
  Map<int, List<PositionComponent>> grid,
) {
  grid.clear();
  for (var component in components) {
    var cellIndex = getCellIndex(component.position);
    grid.putIfAbsent(cellIndex, () => []).add(component);
  }
}
