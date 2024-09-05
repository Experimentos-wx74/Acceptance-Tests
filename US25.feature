Feature: US25 Visualización de sección Sobre Nosotros
    Como potencial usuario
    quiero acceder a una página sobre la startup
    para conocer el propósito de la empresa detrás de la aplicación.	


Scenario: Visualización de página Sobre Nosotros

    Given el <usuario> desea conocer sobre la empresa detrás de la aplicación
    When ingresa al Landing Page
    And ingresa a la sección <Sobre Nosotros>
    Then se mostrará la <pagina> Sobre Nosotros,
    en la que detalla <informacion> sobre la startup, su misión y visión.

Examples: INPUT

    | usuario |
    | Jorge Palma  |

Examples: OUTPUT

    | página            | informacion |
    | Sobre Nosotros    | Sobre nosotros..., Misión..., Visión...  |