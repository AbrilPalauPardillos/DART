import 'dispositivo.dart';

class RelojInteligente extends Dispositivo {
  bool GPS;
  double tamanioPantalla;
  String tipoCorrea;

  RelojInteligente({
    required int id,
    required String marca,
    required String modelo,
    required int anioFabricacion,
    required this.GPS,
    required this.tamanioPantalla,
    required this.tipoCorrea,
  }) : super(
         id: id,
         marca: marca,
         modelo: modelo,
         anioFabricacion: anioFabricacion,
       );

  @override
  String toString() {
    final gpsStr = GPS ? 'Sí' : 'No';
    return '${super.toString()}, GPS: $gpsStr, Tamaño Pantalla: ${tamanioPantalla} pulgadas, Tipo Correa: $tipoCorrea';
  }
}
