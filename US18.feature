Feature: US18 Disponibilidad y confiabilidad
    Como usuario 
    quiero que la aplicación esté disponible siempre 
    para acceder a ella en cualquier momento y sin interrupciones.

Scenario: Acceso a la aplicación en todo momento
    Given el <usuario> desea usar la aplicación en cualquier instante
    When ingrese a la aplicación
    Then la aplicación se encuentra disponible y funcional

Examples:
    | usuario |                                                                                               
    | Pablo   |

Escenario: Acceso a la aplicación sin interrupciones
    Given el <usuario> desea usar la aplicación en cualquier instante
    When ingrese a la aplicación
    Then la aplicación carga rápidamente y controla el tráfico para que la experiencia sea fluida
    
Examples:
    | usuario  |                                                                                          
    | Pablo    | 
 