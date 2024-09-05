Feature: US07 Notificación de citas al criador
    Como criador
    quiero recibir notificaciones de citas programadas con los asesores
    para mantenerme al tanto de de la fecha de mi cita

Scenario: Ver notificaciones de cita programadas por criadores

    Given el <asesor> desea ver sus <notificaciones> de citas programadas.
    When se encuentre en el apartado de "Notificaciones"
    Then el sistema le mostrará un <mensaje> que describe brevemente la solicitud.

Examples:
| Criador| Tipo de notificación |  Mensaje                                             |                Fecha                  |
| Luisa  | Cita                 |  Tienes un asesoramiento programado con Marcus Smith | 23 de septiembre de 2024, 12:00:00 h  |


Scenario: Aceptar notificación de cita programada con el asesor
    Given que el criador decide cerrar la notificación para liberar espacio y permitir la visualización de otras notificaciones.
    And se encuentra en la sección de "Notificaciones" del sistema.
    When haga clic en el botón <Aceptar> dentro de la notificación correspondiente a la cita programada con el asesor.
    Then el sistema eliminará la notificación de la lista de notificaciones.