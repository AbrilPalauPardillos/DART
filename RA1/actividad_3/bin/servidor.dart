import 'dispositivo.dart';

class Servidor extends Dispositivo {
  int numeroBahias;
  double capacidadAlmacenamiento;
  String tipoRed;

  Servidor({
    required int id,
    required String marca,
    required String modelo,
    required int anioFabricacion,
    required this.numeroBahias,
    required this.capacidadAlmacenamiento,
    required this.tipoRed,
  }) : super(
         id: id,
         marca: marca,
         modelo: modelo,
         anioFabricacion: anioFabricacion,
       );

  @override
  String toString() {
    return '${super.toString()}, Número de Bahías: $numeroBahias, Capacidad de Almacenamiento: ${capacidadAlmacenamiento}TB, Tipo de Red: $tipoRed';
  }

  void actualizarLibrerias() {
    print('Iniciando actualización de librerías en el servidor...');

    if (tipoRed.toLowerCase().contains('ethernet') ||
        tipoRed.toLowerCase().contains('fibra')) {
      print('Conexión de red estable detectada: $tipoRed');
      print('Verificando versiones actuales de librerías...');
      print('Descargando actualizaciones...');
      print('Instalando nuevas versiones...');
      print('Actualización completada exitosamente.');
    } else {
      print(
        'Advertencia: Tipo de red $tipoRed no garantiza estabilidad. Se recomienda revisar la conexión antes de actualizar.',
      );
    }
  }
}
