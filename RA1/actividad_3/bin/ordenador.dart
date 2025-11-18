import 'dispositivo.dart';
import 'mixin/conectividadWifi.dart';
import 'mixin/Sincronizacion.dart';

class Ordenador extends Dispositivo with ConectividadWifi, SincronizacionNube {
  int memoriaRAM;
  String procesador;
  String sistemaOperativo;

  Ordenador({
    required int id,
    required String marca,
    required String modelo,
    required int anioFabricacion,
    required this.memoriaRAM,
    required this.procesador,
    required this.sistemaOperativo,
  }) : super(id: id, marca: marca, modelo: modelo, anioFabricacion: anioFabricacion);

  void compilarCodigo() {
    print('--- Iniciando compilación en $sistemaOperativo ---');
    if (memoriaRAM < 4) {
      print('Error: Memoria RAM insuficiente para compilar.');
    } else {
      print('Compilando código con procesador $procesador...');
      print('Compilación finalizada con éxito. ');
    }
  }

  @override
  String toString() {
    return '${super.toString()} | RAM: ${memoriaRAM}GB | CPU: $procesador | OS: $sistemaOperativo';
  }
}