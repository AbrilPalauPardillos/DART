import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:actividad4future/planet.dart';

class Services {
  final String STAR_WARS_API_URL = 'https://swapi.tech/api/';

  http.Client getConnection() {
    return http.Client();
  }

  Future<List<Planet>> getStarWarsPlanets() async {
    List<Planet> planetsList = [];
    var client = getConnection();
    try {
      var response = await client.get(Uri.parse('${STAR_WARS_API_URL}planets'));
      Map<String, dynamic> data = jsonDecode(response.body);
      List results = data['results'];

      for (var item in results) {
        var detailRes = await client.get(Uri.parse(item['url']));
        var p = jsonDecode(detailRes.body)['result']['properties'];
        planetsList.add(Planet(p['name'], p['diameter'], p['gravity'],
            p['climate'], p['terrain']));
      }
    } finally {
      client.close();
    }
    return planetsList;
  }

  Future<void> getHabitantesPlaneta(String id) async {
    var client = getConnection();
    var response =
        await client.get(Uri.parse('${STAR_WARS_API_URL}planets/$id'));
    var p = jsonDecode(response.body)['result']['properties'];

    print("\n--- Apartado B: Info detallada del Planeta ID $id ---");
    print("1. Nombre: ${p['name']}");
    print("2. Diámetro: ${p['diameter']}");
    print("3. Clima: ${p['climate']}");
    print("4. Gravedad: ${p['gravity']}");
    print("5. Población: ${p['population']}");
    client.close();
  }

  Future<void> getInfoHomeworld(String personId) async {
    var client = getConnection();
    var res =
        await client.get(Uri.parse('${STAR_WARS_API_URL}people/$personId'));
    String homeworldUrl =
        jsonDecode(res.body)['result']['properties']['homeworld'];

    var worldRes = await client.get(Uri.parse(homeworldUrl));
    var w = jsonDecode(worldRes.body)['result']['properties'];

    print("\n--- Apartado C: Planeta natal de personaje ID $personId ---");
    print("1. Nombre: ${w['name']}");
    print("2. Terreno: ${w['terrain']}");
    print("3. Clima: ${w['climate']}");
    print("4. Agua superficial: ${w['surface_water']}");
    print("5. Diámetro: ${w['diameter']}");
    client.close();
  }

  Future<void> getPeliDeVehiculo(String vehicleId) async {
    var client = getConnection();
    var res =
        await client.get(Uri.parse('${STAR_WARS_API_URL}vehicles/$vehicleId'));
    var vProps = jsonDecode(res.body)['result']['properties'];

    print("\n--- Apartado D: Info del Vehículo y su Película ---");
    print("Vehículo: ${vProps['name']}");

    if (vProps['films'].length > 0) {
      var filmRes = await client.get(Uri.parse(vProps['films'][0]));
      var f = jsonDecode(filmRes.body)['result']['properties'];
      print("Apareció en:");
      print("1. Título: ${f['title']}");
      print("2. Director: ${f['director']}");
      print("3. Productor: ${f['producer']}");
      print("4. Episodio: ${f['episode_id']}");
      print("5. Fecha estreno: ${f['release_date']}");
    }
    client.close();
  }
}
