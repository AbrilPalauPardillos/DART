import 'dart:io';
import 'dispositivo.dart';
import 'ordenador.dart';
import 'tablet.dart';
import 'relojinteligente.dart';
import 'servidor.dart';

// Lista global para almacenar los dispositivos
List<Dispositivo> inventario = [];

void main() {
  bool salir = false;

  while (!salir) {
    print('\n--- GESTIÓN DE DISPOSITIVOS STUCOM ---');
    print('1. Crear dispositivo');
    print('2. Eliminar dispositivo');
    print('3. Modificar dispositivo');
    print('4. Listar dispositivos y probar métodos');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? entrada = stdin.readLineSync();

    switch (entrada) {
      case '1':
        crearDispositivo();
        break;
      case '2':
        eliminarDispositivo();
        break;
      case '3':
        modificarDispositivo();
        break;
      case '4':
        listarYProbar();
        break;
      case '5':
        print('Saliendo del sistema...');
        salir = true;
        break;
      default:
        print('Opción no válida.');
    }
  }
}

void crearDispositivo() {
  print('\n--- CREAR DISPOSITIVO ---');
  print('1. Ordenador');
  print('2. Tablet');
  print('3. Reloj Inteligente');
  print('4. Servidor');
  stdout.write('Selecciona el tipo: ');
  String? tipo = stdin.readLineSync();

  // Datos comunes
  stdout.write('ID: ');
  int id = int.parse(stdin.readLineSync() ?? '0');
  stdout.write('Marca: ');
  String marca = stdin.readLineSync() ?? '';
  stdout.write('Modelo: ');
  String modelo = stdin.readLineSync() ?? '';
  stdout.write('Año de fabricación: ');
  int anio = int.parse(stdin.readLineSync() ?? '2024');

  switch (tipo) {
    case '1': // Ordenador
      stdout.write('Memoria RAM (GB): ');
      int ram = int.parse(stdin.readLineSync() ?? '8');
      stdout.write('Procesador: ');
      String cpu = stdin.readLineSync() ?? '';
      stdout.write('Sistema Operativo: ');
      String os = stdin.readLineSync() ?? '';

      inventario.add(
        Ordenador(
          id: id,
          marca: marca,
          modelo: modelo,
          anioFabricacion: anio,
          memoriaRAM: ram,
          procesador: cpu,
          sistemaOperativo: os,
        ),
      );
      break;

    case '2': // Tablet
      stdout.write('Tamaño Pantalla (pulgadas): ');
      double pantalla = double.parse(stdin.readLineSync() ?? '10.0');

      inventario.add(
        Tablet(
          id: id,
          marca: marca,
          modelo: modelo,
          anioFabricacion: anio,
          tamanioPantalla: pantalla,
        ),
      );
      break;

    case '3': // Reloj
      stdout.write('Tipo de Correa: ');
      String correa = stdin.readLineSync() ?? 'Silicona';

      inventario.add(
        RelojInteligente(
          id: id,
          marca: marca,
          modelo: modelo,
          anioFabricacion: anio,
          tipoCorrea: correa,
        ),
      );
      break;

    case '4': // Servidor
      stdout.write('Número de Bahías: ');
      int bahias = int.parse(stdin.readLineSync() ?? '4');
      stdout.write('Almacenamiento (TB): ');
      double tb = double.parse(stdin.readLineSync() ?? '1.0');
      stdout.write('Tipo de Red: ');
      String red = stdin.readLineSync() ?? 'Ethernet';

      inventario.add(
        Servidor(
          id: id,
          marca: marca,
          modelo: modelo,
          anioFabricacion: anio,
          numeroBahias: bahias,
          capacidadAlmacenamientoTB: tb,
          tipoRed: red,
        ),
      );
      break;

    default:
      print('Tipo incorrecto. Cancelando creación.');
      return;
  }
  print('Dispositivo creado con éxito.');
}

void eliminarDispositivo() {
  stdout.write('Introduce el ID del dispositivo a eliminar: ');
  int id = int.parse(stdin.readLineSync() ?? '0');

  int inicial = inventario.length;
  inventario.removeWhere((d) => d.id == id);

  if (inventario.length < inicial) {
    print('Dispositivo eliminado.');
  } else {
    print('No se encontró ningún dispositivo con ese ID.');
  }
}

void modificarDispositivo() {
  stdout.write('Introduce el ID del dispositivo a modificar: ');
  int id = int.parse(stdin.readLineSync() ?? '0');

  try {
    var dispositivo = inventario.firstWhere((d) => d.id == id);
    print('Dispositivo encontrado: ${dispositivo.marca} ${dispositivo.modelo}');

    stdout.write('Nueva marca (Enter para mantener): ');
    String nuevaMarca = stdin.readLineSync() ?? '';
    if (nuevaMarca.isNotEmpty) dispositivo.marca = nuevaMarca;

    stdout.write('Nuevo modelo (Enter para mantener): ');
    String nuevoModelo = stdin.readLineSync() ?? '';
    if (nuevoModelo.isNotEmpty) dispositivo.modelo = nuevoModelo;

    print('Dispositivo modificado.');
  } catch (e) {
    print('Dispositivo no encontrado.');
  }
}

void listarYProbar() {
  if (inventario.isEmpty) {
    print('No hay dispositivos registrados.');
    return;
  }

  for (var d in inventario) {
    print('\n-------------------------------');
    print(d.toString());

    // Probando métodos específicos y Mixins usando smart casts
    if (d is Ordenador) {
      d.conectarRed('Stucom_Teachers'); // Mixin
      d.compilarCodigo(); // Método propio
      d.sincronizarDatos(); // Mixin
    } else if (d is Tablet) {
      d.modoNoche();
      d.activarVibracion("Batería baja");
    } else if (d is RelojInteligente) {
      d.mostrarNotificaciones();
      d.sincronizarDatos();
    } else if (d is Servidor) {
      d.actualizarLibrerias();
    }
  }
}
