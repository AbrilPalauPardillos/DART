import 'dart:io';
import 'alumno.dart';
import 'modulo.dart';
import 'globals.dart';

void main(List<String> arguments) {
  Alumno alumno1 = Alumno(
    nombre: 'Albora',
    apellido: 'Izquierdo',
    edad: 23,
    dni: '15469825L',
    modulosCursados: [
      modulosDisponibles['M05']!,
      modulosDisponibles['M02']!,
      modulosDisponibles['M01']!,
    ],
    repetidor: true,
  );

  int opcion = 0;
  do {
    print('\n===== MENÚ DE GESTIÓN DE ALUMNO =====');
    print('1. Buscar módulo');
    print('2. Ordenar módulos');
    print('3. Validar número de módulos');
    print('4. Mostrar información del alumno');
    print('5. Salir');
    stdout.write('Selecciona una opción: ');
    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (opcion) {
      case 1:
        stdout.write('Introduce el nombre del módulo (ej. M02): ');
        String nombre = stdin.readLineSync() ?? '';
        BuscarModulo(alumno1, nombre);
        break;

      case 2:
        List<Modulo> ordenados = ordenarModulos(alumno1);
        print('--- Módulos ordenados ---');
        for (var m in ordenados) {
          print(m);
        }
        break;

      case 3:
        validarNumeroDeModulos(alumno1);
        break;

      case 4:
        print('--- Información del alumno ---');
        print(alumno1);
        break;

      case 5:
        print('Saliendo del programa...');
        break;

      default:
        print('Opción no válida. Inténtalo de nuevo.');
    }
  } while (opcion != 5);
}

// ===== MÉTODOS =====

// ORDENAR MÓDULOS
List<Modulo> ordenarModulos(Alumno alumno) {
  List<Modulo> listaOrdenada = List.from(alumno.modulosCursados);
  listaOrdenada.sort((a, b) => a.nombreModulo.compareTo(b.nombreModulo));
  return listaOrdenada;
}

// BUSCAR MÓDULO
bool BuscarModulo(Alumno alumno, String nombreModulo) {
  for (var modulo in alumno.modulosCursados) {
    if (modulo.nombreModulo.toLowerCase() == nombreModulo.toLowerCase()) {
      print('El módulo $nombreModulo fue encontrado.');
      return true;
    }
  }
  print('El módulo $nombreModulo no fue encontrado.');
  return false;
}

// VALIDAR NÚMERO DE MÓDULOS
bool validarNumeroDeModulos(Alumno alumno) {
  if (alumno.modulosCursados.length >= 4) {
    print('Curso completo');
  } else {
    print('El alumno tiene menos de 4 módulos. Se completará la lista...');
    for (var modulo in modulosDisponibles.values) {
      bool yaTiene = alumno.modulosCursados.any(
        (m) => m.nombreModulo == modulo.nombreModulo,
      );
      if (!yaTiene) alumno.modulosCursados.add(modulo);
      if (alumno.modulosCursados.length >= 4) break;
    }
    print('Lista actualizada de módulos:');
    for (var m in alumno.modulosCursados) {
      print(m.nombreModulo);
    }
  }
  return true;
}
