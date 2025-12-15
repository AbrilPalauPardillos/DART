class Planet {
  final String name;
  final int diameter;
  final String gravity;

  Planet(this.name, this.diameter, this.gravity);

  String getName() {
    return name;
  }

  int getDiameter() {
    return diameter;
  }

  String getGravity() {
    return gravity;
  }
}
