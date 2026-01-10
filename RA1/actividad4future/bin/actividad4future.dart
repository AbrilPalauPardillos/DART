import 'dart:async';
import 'package:actividad4future/planet.dart';
import 'package:actividad4future/services.dart';

Future<void> main(List<String> arguments) async {
  Services service = Services();

  print("Cargando datos de Star Wars API...\n");

  await service.getStarWarsPlanets().then((response) {
    print("--- Apartado A: Listado de Planetas ---");
    for (Planet item in response) {
      print(
          "Planeta: ${item.getName()} | Ø: ${item.getDiameter()} | Gravedad: ${item.getGravity()} | Clima: ${item.getClimate()} | Terreno: ${item.getTerrain()}");
    }
  });

  await service.getHabitantesPlaneta("1");

  await service.getInfoHomeworld("1");

  await service.getPeliDeVehiculo("4");
}
