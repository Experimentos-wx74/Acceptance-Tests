Feature: US21 Recuperación de contraseña
    Como usuario 
    quiero poder recuperar mi contraseña 
    para acceder a mi cuenta

Scenario: Recuperación de contraseña
    Given el <usuario> olvidó su contraseña
    When se dirija a la sección de “Inicio de sesión”
    And seleccione “olvidé mi contraseña”
    And coloque su <correo vinculado> a la cuenta.
    Then se le enviará un correo para que cambie su contraseña.

Examples:
    | usuario | correo vinculado |
    | Juan    | Juan@example.com |
    | Maria   | Maria@example.com|