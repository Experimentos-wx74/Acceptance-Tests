Feature: US11 Gestión de jaulas de cuyes
    Como criador de cuyes 
    quiero poder registrar una jaula en la plataforma 
    para poder gestionar la información de mis cuyes de manera organizada.

Scenario: Registro de una jaula

Given que el <criador> desea registrar una jaula.
And se encuentra en el apartado "Registro".
When haga clic en el botón "Registrar Jaula".
And completa el formulario con la información requerida de la jaula como <nombre>, <tamanio> y <observaciones>.
And hace clic en el botón "Registrar Jaula".
Then el sistema le mostrará un <mensaje del registro exitoso> de la jaula.

Examples:
| criador  | nombre  | tamanio  | observaciones | mensaje del registro exitoso      |                                                                                                | confirmacion |
| Pablo    | Jaula 2 | 4 m2     | Ninguna       | Se registro Jaula 2 correctamente |

Scenario: Eliminar jaula

Given que el <criador> desea eliminar una jaula.
And se encuentra en una jaula del apartado "Mis Animales".
When haga clic en el botón "Borrar".
Then el sistema le mostrará un <mensaje de confirmacion> solicitando la confirmación de la eliminación.
And después de confirmar, la jaula se elimina junto a la información de los cuyes asignados a esa jaula.

Examples:
| criador | confirmacion |
| Pablo   | Aceptar      |