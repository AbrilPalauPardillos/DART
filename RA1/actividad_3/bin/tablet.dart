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

  void modoNoche() {
    print('🌙 Activando modo noche...');

    // VERIFICAR SISTEMA OPERATIVO SOPORTA MODO NOCHE
    if (sistemaOperativo.toLowerCase().contains('android') ||
        sistemaOperativo.toLowerCase().contains('ios')) {
      print('Modo noche activado en $sistemaOperativo.');
      print('Brillo reducido y colores cálidos aplicados.');
    } else {
      print('Modo noche no disponible en $sistemaOperativo.');
    }
  }
}
