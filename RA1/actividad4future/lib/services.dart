import 'dart:async';
import 'dart:convert';
import 'package:actividad4future/planet.dart';

class Services {
  final String STAR_WARS_API_URL = 'https://swapi.dev/api/';

  Services() {
    setConnection();
  }

  /// Inicializa la conexión
  setConnection() {}

  /// Obtiene la conexión
  getConnection() {}

  /// Obtiene planetas del api de Start Wars
  Future<List<Planet>> getStarWarsPlanets() async {
    List<Planet> planetsList = [];
    late String response;
    // Conexión con el API
    try {
      response = (await getConnection()
          .read(Uri.parse('${STAR_WARS_API_URL}planets')));
    } finally {
      // Tratar el resultado
      Map<String, dynamic> planets = jsonDecode(response);

      // Recorrer mapa obtenido
      planets['results'].forEach((value) {
        Planet newPlanet = Planet(
            value['name'],
            int.parse(
              value['diameter'],
            ),
            value['gravity']);
        planetsList.add(newPlanet);
      });

      // Cerramos conexión
      getConnection().close();
    }

    // Devuelve el listado de planetas.
    return planetsList;
  }
}
