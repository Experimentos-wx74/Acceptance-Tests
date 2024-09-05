Feature: US01 Visualización del catálogo de asesores
    Como criador de cuyes 
    quiero explorar un catálogo de asesores 
    para conocer quiénes me pueden apoyar con asesorías

Scenario: Explorar catálogo de asesores
Given el <criador> quiere explorar el catálogo de asesores.
And se encuentra en el apartado de “Asesores”.
When seleccione el botón “Catálogo de asesores”.
Then el sistema le mostrará una <lista> de todos los asesores disponibles en la aplicación.

Examples:
| criador | asesores disponibles |
| Iros    | asesor1, asesor2, asesor3 |


Scenario: Filtrar búsqueda de asesores
Given el <criador> quiere personalizar su búsqueda.
And se encuentra en el apartado de “Asesores”.
When seleccione el botón de filtros.
Then el sistema le permitirá <filtrar> el catálogo de asesores por ubicación, experiencia o reputación.

Examples:
| criador | filtrar asesores |
| Iros    | ubicación, experiencia, reputación |

Scenario: Ver mis asesores
Given el <criador> desea ver los asesores a los que les solicitó un servicio para recibir una mentoría.
And se encuentra en el apartado de “Asesores”.
When haga clic en el botón “Mis Asesores”
Then el sistema le mostrará una <lista> de todos los asesores a los que ha solicitado una cita.

Examples:
| criador | asesores solicitados una cita |
| Iros    | asesor1, asesor2, asesor3 |