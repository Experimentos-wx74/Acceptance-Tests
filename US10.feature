Feature: US10 Visualización de publicaciones de los asesores
    Como criador de cuyes
    quiero poder ver las publicaciones de la comunidad de asesores
    para obtener información útil y, si es necesario, solicitar asesoramiento en base a esas publicaciones.	
 
Scenario: Visualizar publicaciones de asesores
    Given el <criador> desea ver las publicaciones de la comunidad
    When haga clic en el botón “Publicaciones” de la Sidebar.
    Then el sistema le mostrará una lista de las últimas <publicaciones> de la comunidad de asesores.

Examples:
    | criador           | publicaciones                      |
    | Luisa Sanchez     | Aprende sobre la salud tus cuyes!! |
    |                   | Cómo alimentar a tus cuyes         |
    |                   | Cómo prevenir enfermedades en cuyes|