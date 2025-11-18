mixin Vibrar {
  void activarVibracion(String mensaje) {
    print('El dispositivo está vibrando.');
    print('Motivo de la vibración: $mensaje');
  }

  void desactivarVibracion() {
    print('Vibración desactivada.');
  }
}
