import 'dispositivo.dart';
import 'mixin/vibración.dart';
import 'mixin/Sincronizacion.dart';

class RelojInteligente extends Dispositivo with Vibrar, SincronizacionNube {
  String tipoCorrea;
  bool tieneGPS;

  RelojInteligente({
    required int id,
    required String marca,
    required String modelo,
    required int anioFabricacion,
    required this.tipoCorrea,
    this.tieneGPS = false,
  }) : super(
         id: id,
         marca: marca,
         modelo: modelo,
         anioFabricacion: anioFabricacion,
       );

  void mostrarNotificaciones() {
    activarVibracion("Nueva notificación recibida");
    print('Notificación: Tienes un nuevo correo de Stucom.');
    print('Notificación: Meta de pasos alcanzada.');
  }

  @override
  String toString() {
    return '${super.toString()} | Correa: $tipoCorrea | GPS: ${tieneGPS ? "Sí" : "No"}';
  }
}
