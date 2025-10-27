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

  void mostrarNotificaciones() {
    print(
      '📲 Mostrando notificaciones en pantalla de $tamanioPantalla pulgadas...',
    );

    // LISTA DE NOTIFICACIONES SIMULADAS
    List<String> notificaciones = [
      'Email nuevo de claseDAM@centro.edu',
      'Evento: Examen de Programación mañana a las 9:00',
      'Mensaje de Juan: "¿Has hecho el ejercicio 3?"',
      'Actualización disponible del sistema',
    ];

    // MOSTRAR CADA NOTIFICACIÓN
    for (String noti in notificaciones) {
      print(noti);
    }

    print('Fin de las notificaciones.');
  }
}
