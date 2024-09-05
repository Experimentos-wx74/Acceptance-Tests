Feature: US23 Visualización de sección de inicio
    Como potencial usuario
    Quiero acceder a una página de inicio para conocer la idea principal de la aplicación y ver un diseño agradable
    Para poder entender rápidamente de qué se trata la aplicación

Scenario: Visualización de página de inicio

    Given el usuario desea conocer sobre la aplicación
    When ingresa al Landing Page
    Then se mostrará la página inicial sencilla que da a entender la idea principal

Examples:
    | usuario            |
    | Usuario nuevo      |
    | Usuario recurrente |

Examples: OUTPUT
    | diseño     | contenido                                             |
    | agradable  | Presentación clara de la idea principal de la app     |