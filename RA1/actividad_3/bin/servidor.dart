import 'dispositivo.dart';
import 'mixin/Sincronizacion.dart';

class Servidor extends Dispositivo with SincronizacionNube {
  int numeroBahias;
  double capacidadAlmacenamientoTB; // en Terabytes
  String tipoRed; // Ethernet, Fibra, etc.

  Servidor({
    required int id,
    required String marca,
    required String modelo,
    required int anioFabricacion,
    required this.numeroBahias,
    required this.capacidadAlmacenamientoTB,
    required this.tipoRed,
  }) : super(
         id: id,
         marca: marca,
         modelo: modelo,
         anioFabricacion: anioFabricacion,
       );

  void actualizarLibrerias() {
    print('Conectando al repositorio central mediante $tipoRed...');
    print('Verificando integridad de $numeroBahias bahías de disco...');
    print('Actualizando librerías del sistema... [||||||||||] 100%');
    print('Servidor actualizado.');
  }

  @override
  String toString() {
    return '${super.toString()} | Bahías: $numeroBahias | Almacenamiento: ${capacidadAlmacenamientoTB}TB | Red: $tipoRed';
  }
}
