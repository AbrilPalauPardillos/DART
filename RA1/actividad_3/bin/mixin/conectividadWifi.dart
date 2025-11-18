mixin ConectividadWifi {
  bool estaConectado = false;

  void conectarRed(String ssid) {
    print('Intentando conectar a la red: "$ssid"...');
    if (ssid.isNotEmpty) {
      estaConectado = true;
      print('Conectado a la red "$ssid".');
    } else {
      estaConectado = false;
      print('Error: SSID no válido.');
    }
  }

  void desconectarRed() {
    if (estaConectado) {
      estaConectado = false;
      print('Desconectado de la red Wi-Fi.');
    }
  }
}
