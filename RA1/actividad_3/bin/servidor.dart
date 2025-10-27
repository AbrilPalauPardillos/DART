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
    print('Actualizando librerías del servidor...');

    // COMPROBAR SI LA RED ES ADECUADA
    if (tipoRed.toLowerCase().contains('ethernet') ||
        tipoRed.toLowerCase().contains('fibra')) {
      print('Red estable detectada: $tipoRed');
      print('Descargando librerías...');
      print('Instalando actualizaciones...');
      print('Librerías actualizadas correctamente.');
    } else {
      print(
        'Red $tipoRed no recomendada para actualizar. Verifica la conexión.',
      );
    }
  }
}
