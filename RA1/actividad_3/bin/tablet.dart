import 'dispositivo.dart';
import 'mixin/conectividadWifi.dart';
import 'mixin/vibración.dart';

class Tablet extends Dispositivo with ConectividadWifi, Vibrar {
  double tamanioPantalla;
  bool tieneCamara;

  Tablet({
    required int id,
    required String marca,
    required String modelo,
    required int anioFabricacion,
    required this.tamanioPantalla,
    this.tieneCamara = true,
  }) : super(
         id: id,
         marca: marca,
         modelo: modelo,
         anioFabricacion: anioFabricacion,
       );

  void modoNoche() {
    print(
      'Activando modo noche en la pantalla de $tamanioPantalla pulgadas...',
    );
    print('Brillo reducido y filtro de luz azul activado.');
  }

  @override
  String toString() {
    return '${super.toString()} | Pantalla: $tamanioPantalla" | Cámara: ${tieneCamara ? "Sí" : "No"}';
  }
}
