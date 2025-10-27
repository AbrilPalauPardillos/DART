import 'dispositivo.dart';

class Tablet extends Dispositivo {
  double tamanioPantalla;
  bool camara;
  String sistemaOperativo;

  Tablet({
    required int id,
    required String marca,
    required String modelo,
    required int anioFabricacion,
    required this.tamanioPantalla,
    required this.camara,
    required this.sistemaOperativo,
  }) : super(
         id: id,
         marca: marca,
         modelo: modelo,
         anioFabricacion: anioFabricacion,
       );

  @override
  String toString() {
    final lteStr = camara ? 'Sí' : 'No';
    return '${super.toString()}, Tamaño Pantalla: ${tamanioPantalla} pulgadas, LTE: $lteStr, Sistema Operativo: $sistemaOperativo';
  }
}
