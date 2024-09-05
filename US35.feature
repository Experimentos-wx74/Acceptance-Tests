Feature: US35 Uso de nuestra API para manejar la reserva de citas entre asesores y criadores
  Como desarrollador
  quiero integrar un API
  para gestionar la información de las citas entre asesores y criadores en la base de datos

Scenario: Integrar un API para gestionar la reserva de citas entre asesores y criadores en la base de datos
  Given el desarrollador tiene acceso a la documentación de la API y las credenciales necesarias para realizar la integración
  When el desarrollador envía una solicitud POST con los datos de una cita entre un asesor y un criador a la API
  Then la API responde con un código de estado 200 y la cita se agrega correctamente a la base de datos
Examples:
    | solicitud | codigo de estado | operacion solicitada      |
    | GET       | 200 OK           | Obtener lista de citas    |
    | POST      | 201 Created      | Crear una nueva cita      |
    | PUT       | 200 OK           | Actualizar una cita       |

Scenario: Integrar un API para gestionar la reserva de citas entre asesores y criadores en la base de datos
  Given el desarrollador tiene acceso a la documentación de la API y las credenciales necesarias para realizar la integración
  When el desarrollador envía una solicitud GET a la API para obtener la información de todas las citas entre un asesor y un criador específico
  Then la API responde con un código de estado 200 y devuelve todas las citas entre el asesor y el criador solicitados
Examples:
    | solicitud | codigo de estado          | mensaje de error                  |
    | POST      | 400 Bad Request           | Parámetros de solicitud inválidos |
    | POST      | 401 Unauthorized          | Credenciales inválidas            |
    | PUT       | 404 Not Found             | Recurso no encontrado             |
    | DELETE    | 404 Not Found             | Recurso no encontrado             |
    | GET       | 500 Internal Server Error | Error interno del servidor        |
