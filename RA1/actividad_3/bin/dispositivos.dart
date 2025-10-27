class Dispositivo {
  int id;
  String marca;
  String modelo;
  int anioFabricacion;

  Dispositivo({
    required this.id,
    required this.marca,
    required this.modelo,
    required this.anioFabricacion,
  });

  @override
  String toString() {
    return 'Dispositivo ID: $id, Marca: $marca, Modelo: $modelo, Año de Fabricación: $anioFabricacion';
  }
}
