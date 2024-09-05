Feature: US26 Visualización de sección Características
    Como potencial usuario
    quiero acceder a una página sobre las características
    para conocer las principales funcionalidades de la aplicación.


Scenario: Visualización de página Caracterícticas

    Given el <usuario> desea conocer sobre las características de la aplicación
    When ingresa al Landing Page
    And ingresa a la sección características
    Then se mostrará la página Características en la que detalla información sobre las funcionalidades principales que ofrece la aplicación.

Examples: INPUT

    | usuario |
    | Khiu Mileth  |

Examples: OUTPUT

    | página            | informacion |
    | Caracterícticas   | Nuestros Servicios... |