Feature: US05 Visualización de información del criador de cuyes
    Como asesor 
    quiero tener información de la granja del criador de cuyes 
    para planificar los temas de la asesoría

Scenario: Ver información del criador
Given el <asesor> desea ver información del criador de cuyes con el que tendrá una asesoría
And se encuentra en la sección de “Mis Citas” .
And observa que tiene una <cita> programada con un criador.
When haga clic en la card de la cita.
Then el sistema le permitirá ver <información de la granja del criador> como número de jaulas y número de cuyes, como también información del criador como nombre, edad y localización.

Examples:
    | asesor | cita | información de la granja del criador |
    | Pepe | cita1 | numero de jaulas: 10, numero de cuyes: 50 |

Scenario: Fallar al acceder a la información del criador
Given el <asesor> desea ver información del criador de cuyes con el que tendrá una asesoría
And se encuentra en la sección de “Mis Citas” .
And observa que tiene una <cita> programada con un criador.
When haga clic en la card de la cita.
And se encuentre con un error al cargar la información.
Then el sistema le mostrará un <mensaje de error> indicando que hubo un error de carga.

Examples:
    | asesor | cita | mensaje de error |
    | Pepe | cita1 | Error al cargar la información del criador |