import 'modulo.dart';

class Alumno {
  String nombre;
  String apellido;
  int edad;
  String dni;
  List<Modulo> modulosCursados;
  bool repetidor;

  Alumno({
    required this.nombre,
    required this.apellido,
    required this.edad,
    required this.dni,
    required this.modulosCursados,
    required this.repetidor,
  });

  @override
  String toString() {
    final modulosStr = modulosCursados.isEmpty
        ? ''
        : modulosCursados.map((m) => m.toString()).join(', ');
    final repetidorStr = repetidor ? '(repetidor)' : '(no repetidor)';
    return '$nombre $apellido ($edad) - $dni: [ $modulosStr ] $repetidorStr';
  }
}
