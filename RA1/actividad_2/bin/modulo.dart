class Modulo {
  String nombreModulo;
  int cantidadRA;
  int horas;

  Modulo({
    required this.nombreModulo,
    required this.cantidadRA,
    required this.horas,
  });

  @override
  String toString() {
    return '$nombreModulo: $cantidadRA - (${horas} horas)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Modulo &&
          runtimeType == other.runtimeType &&
          nombreModulo == other.nombreModulo;

  @override
  int get hashCode => nombreModulo.hashCode;
}
