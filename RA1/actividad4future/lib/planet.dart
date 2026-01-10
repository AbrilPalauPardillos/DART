class Planet {
  final String name;
  final String diameter;
  final String gravity;
  final String climate;
  final String terrain;

  Planet(this.name, this.diameter, this.gravity, this.climate, this.terrain);

  String getName() => name;
  String getDiameter() => diameter;
  String getGravity() => gravity;
  String getClimate() => climate;
  String getTerrain() => terrain;
}
