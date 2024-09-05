Feature: US36 Uso de nuestra API para manejar las jaulas y animales 
    Como desarrollador
    quiero integrar un API
    para manejar la información de las jaulas o animales de los criadores en la base de datos, de manera que pueda 
    realizar operaciones CRUD (Crear, Leer, Actualizar, Borrar) a través de solicitudes HTTP.
Scenario: Integrar un API para manejar las solicitudes HTTP de las jaulas y animales
    Given el desarrollador tiene acceso a la documentación de la API y las credenciales necesarias para realizar la integración.
    When el desarrollador envía una <solicitud> de tipo GET, POST o PUT con los datos solicitados de la jaula o animal a la API.
    Then La API responde con un <codigo de estado> correspondiente (200 OK o 201 Created)
    And se realiza la <operacion solicitada>.
Examples:
    | solicitud | codigo de estado | operacion solicitada      |
    | GET       | 200 OK           | Obtener lista de usuarios |
    | POST      | 201 Created      | Crear un nuevo usuario    |
    | PUT       | 200 OK           | Actualizar un usuario      |

Scenario: Manejar errores en la Integración de API para Solicitudes HTTP de las jaulas y animales
    Given el desarrollador tiene acceso a la documentación de la API y las credenciales necesarias para realizar la integración
    When el desarrollador envía una <solicitud> de tipo GET, POST, PUT o DELETE con los datos solicitados de la jaula o animal a la API
    And ocurre un error
    Then la API responde con un <codigo de estado> correspondiente al error (400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found, 500 Internal Server Error).
    And el sistema proporciona un <mensaje de error> descriptivo que ayuda al desarrollador a identificar y corregir el problema.
Examples:
    | solicitud | codigo de estado          | mensaje de error                                        |
    | POST      | 400 Bad Request           | Parámetros de solicitud inválidos, no existe ese userId |
    | POST      | 401 Unauthorized          | Credenciales de autenticación inválidas                 |
    | PUT       | 404 Not Found             | Recurso no encontrado                                   |
    | DELETE    | 404 Not Found             | Recurso no encontrado                                   |
    | GET       | 500 Internal Server Error | Error interno del servidor                              |

