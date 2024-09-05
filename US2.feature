Feature: US02 Visualización de información de un asesor
    Como criador de cuyes 
    quiero ver la información de un asesor 
    para tomar una decisión informada antes de separar una cita

Scenario: Ver información de un asesor 
Given el <criador> quiere ver información de un asesor.
And se encuentra en el apartado de “Asesores”.
When seleccione al cuadro de un asesor.
Then el sistema le mostrará la <información del asesor> como nombre, experiencia, calificación y reseñas.

Examples:
    | criador | información del asesor |
    | Boreas | nombre: Juan Pérez, experiencia: 5 años, calificación: 4.5, reseñas: 10 |


Scenario: Fallar al visualizar la información del asesor
Given el <criador> quiere ver información relevante del asesor.
And se encuentra en el apartado de “Asesores”
When seleccione al cuadro de un asesor.
And se encuentre con un error al cargar la información.
Then el sistema le mostrará un <mensaje de error> de carga.

Examples:
    | criador | mensaje de error |
    | Boreas | Error al cargar la información del asesor |