Feature: US17 Seguridad de información
    Como usuario 
    quiero que la aplicación cumpla con los estándares de seguridad 
    para proteger mi información registrada.

Scenario: Registro de un nuevo usuario con verificación de seguridad (sign-up)
    Given el <usuario> desea registrarse 
    When el sistema recibe una solicitud POST con los <datos del nuevo usuario> a la API
    Then se registrará el nuevo usuario
    And brindará respuesta a la petición realizada

Examples:
    | usuario  | datos del nuevo usuario  |                                                                      
    | Pablo    | nombre....correo...      |

Escenario: Inicio de sesión del usuario con verificación de seguridad exitoso (sign-in)
    Given el <usuario> desea iniciar sesión de forma segura
    When el sistema recibe una solicitud POST con las <credenciales de inicio de sesion del usuario> (correo electrónico y contraseña) a la API
    Then se verificarán las credenciales
    And la API responde con un código de estado 200 y el token de autenticación válido
    
    
Examples:
    | usuario  | credenciales de inicio de sesion del usuario           |                                                                                             
    | Pablo    | correo electrónico:pab12@gmail.com contraseña:12345678 |
 