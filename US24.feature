Feature: US24 Visualización de sección Acerca De
    Como potencial usuario
    quiero acceder a una página sobre el problema que resuelve
    para conocer el propósito de la aplicación.	


Scenario: Visualización de página Acerca De

    Given el <usuario> desea conocer sobre el problema que resuelve la aplicación
    When ingresa al Landing Page
    And ingresa a la sección <Acerca De>
    Then se mostrará la <pagina> Acerca De, 
    en la que se detalla la <problematica> que resolverá la aplicación.

Examples: INPUT
    | usuario |
    | Raul Granados  |

Examples: OUTPUT
    | pagina            | problematica |
    | Acerca De         | En el sector..., Estos desafíos son..., Las preocupaciones...  |