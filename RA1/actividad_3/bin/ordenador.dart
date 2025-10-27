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
    print('Iniciando compilación de código...');

    if (memoriaRAM < 4) {
      print('Error: Memoria RAM insuficiente para compilar el código.');
      return;
    }

    if (!['Windows', 'Linux', 'macOS'].contains(sistemaOperativo)) {
      print('Error: Sistema operativo no compatible para compilación.');
      return;
    }

    print('Usando procesador $procesador con $memoriaRAM GB de RAM...');
    print('Compilando en $sistemaOperativo...');
    print('Compilación exitosa. Código listo para ejecutarse.');
  }
}
