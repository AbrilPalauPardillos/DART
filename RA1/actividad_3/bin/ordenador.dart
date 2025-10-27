import 'dispositivo.dart';

class Ordenador extends Dispositivo {
  int memoriaRAM;
  String procesador;
  String sistemaOperativo;
  double tamanioDiscoDuro;

  Ordenador({
    required int id,
    required String marca,
    required String modelo,
    required int anioFabricacion,
    required this.memoriaRAM,
    required this.procesador,
    required this.sistemaOperativo,
    required this.tamanioDiscoDuro,
  }) : super(
         id: id,
         marca: marca,
         modelo: modelo,
         anioFabricacion: anioFabricacion,
       );

  @override
  String toString() {
    return '${super.toString()}, Memoria RAM: ${memoriaRAM}GB, Procesador: $procesador, Sistema Operativo: $sistemaOperativo, Tamaño Disco Duro: ${tamanioDiscoDuro}GB';
  }

  void compilarCodigo() {
    print(' código...');

    // COMPROBAR SI HAY SUFICIENTE MEMORIA RAM
    if (memoriaRAM < 4) {
      print('Error: Memoria RAM insuficiente para compilar.');
      return;
    }

    // VERIFICAR SI SISTEMA OPERATIVO ES COMPATIBLE
    if (sistemaOperativo != 'Windows' &&
        sistemaOperativo != 'Linux' &&
        sistemaOperativo != 'macOS') {
      print('Error: Sistema operativo no compatible.');
      return;
    }

    // SIMULAR EL PROCESO DE COMPILACIÓN
    print(
      'Compilación iniciada en $sistemaOperativo con procesador $procesador...',
    );
    print('Compilando...');
    print('Compilación finalizada con éxito.');
  }
}
