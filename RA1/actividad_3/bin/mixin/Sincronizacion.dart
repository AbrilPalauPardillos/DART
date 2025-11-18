mixin SincronizacionNube {
  void sincronizarDatos() async {
    print('Sincronizando datos con la nube...');
    // Simulamos un pequeño retardo
    await Future.delayed(Duration(seconds: 1));
    print('Datos de la app y configuración actualizados.');
    print('Sincronización finalizada con éxito.');
  }
}
