Feature: US31 Visualización de calendario
    Como usuario 
    quiero visualizar un calendario 
    para ver de forma agradable y ordenada las asesorías programadas que tengo.

Scenario: Visualizar calendario como criador
    Given el <criador> ha separado una o más asesorías
    When ingrese a la sección Calendario del Sidebar
    Then se mostrará un calendario que muestra las <citas programadas> con los <asesores> en las fechas correspondientes

Examples:
    | criador | citas programadas | asesores |
    | criador1 | 2 | asesor1 |
    | criador2 | 3 | asesor2 |
    | criador3 | 4 | asesor3 |

Scenario:  Visualizar calendario como asesor
    Given el <asesor> tiene programada una o más asesorías
    When ingrese a la sección Calendario del Sidebar
    Then se mostrará un calendario que muestra las <citas programadas> con los <criadores> en las fechas correspondientes

Examples:
    | asesor | citas programadas | criadores |
    | asesor1 | 2 | criador1 |
    | asesor2 | 3 | criador2 |
    | asesor3 | 4 | criador3 |

