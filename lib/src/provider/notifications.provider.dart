class NotificationsProvider {
  static Future<List> getNotifications() async {
    return [
      {
        'notification':
            'Se esta realizando un cambio de ruta en el circuito Villa Salome - PUC, por favor seguir nuevas instruciones',
        'title': 'Cambio de Ruta',
        'type': 'info',
        'datetime': 'Hoy 18:16',
      },
      {
        'title': 'Asistencia Bus 506',
        'notification': 'Villa Salome - PUC',
        'type': 'warning',
        'datetime': 'Hoy 18:16',
      },
      {
        'title': 'Ruta Cancelada',
        'notification': 'Villa Salome - PUC',
        'type': 'danger',
        'datetime': 'Ayer 18:16',
      },
      {
        'notification': 'Mantenimiento próximo jueves',
        'title': 'Villa Salome - PUC',
        'notification': 'Villa Salome - PUC',
        'type': 'secure',
        'datetime': 'Ayer 18:16',
      },
      {
        'title': 'Nuevo itinerario asignado',
        'notification': 'Villa Salome - PUC',
        'type': 'info',
        'datetime': '28/03/2020 18:16',
      },
      {
        'title': 'Cambio de Ruta',
        'notification': 'Villa Salome - PUC',
        'type': 'warning',
        'datetime': '27/03/2020 18:16',
      },
    ];
  }
}
