Feature: US04 Programación de citas con asesores
    Como criador de cuyes 
    quiero programar una cita con un asesor 
    para recibir orientación personalizada sobre la crianza de cuyes

Scenario: Programar cita
Given el <criador> desea programar una cita.
And se encuentra en el apartado de “Horarios Disponibles” del perfil de un asesor.
When seleccione un <horario disponible>
And complete los campos solicitados.
And haga clic en el botón “Reservar Cita”
Then el sistema le mostrará un <mensaje de confirmación>.

Examples:
| criador | seleccionar horario disponible | mensaje de confirmación      |
| John    | horario1                       | La cita se realizo con exito |

Scenario: Fallar al programar cita
Given el <criador> desea programar una cita.
And se encuentra en el apartado de “Horarios Disponibles” del perfil de un asesor.
When seleccione un <horario disponible>
And se encuentra un error técnico o de conexión que impide completar la programación.
Then el sistema le mostrará un <mensaje de error> sugiriendo contactar con soporte.

Examples:
| criador | seleccionar horario disponible | mensaje de error      |
| John    | horario1                       | Error al realizar la cita, contacte con soporte    |