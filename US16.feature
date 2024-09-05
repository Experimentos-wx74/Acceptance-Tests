Feature: US16 Gestión de gastos realizados
    Como criador de cuyes 
    quiero registrar gastos relacionados con mi negocio 
    para tener un control y poder tomar decisiones financieras que serán útiles para tener una mejor rentabilidad.

Scenario:  Registrar gasto
    Given el criador desea registrar los gastos que ha realizado. 
    And se encuentra en el apartado de "Registro".
    When haga clic en el botón <Nuevo Recurso>
    And ingresa los detalles de <precio> y <tipo de gasto>, <fecha>, <detalle>.
    Then el sistema mostrará una confirmacion.

Examples:
    | criador  | Tipo de Gasto  | fecha              | Monto Gastado        | Detalle     |                                                                                                | confirmacion |
    | Pablo    | Alimento       | 2024-05-02         |      S/.500          | Ninguna     |

Escenario: Ver gasto registrado
    Given el criador desea ver los recursos que posee.
    And se encuentra en el apartado de "Mi Granja" de la Sidebar.
    When haga clic en el botón <Gestión de Gastos>.
    Then el sistema le permitirá visualizar sus recursos que incluyen datos como el nombre del recurso, el tipo de recurso (todos, salud, alimento, mantenimiento de criadero) y la fecha en el que fue registrado este gasto.

Examples:
    | criador  | Tipo de Gasto  | fecha              | Monto Gastado        | Detalle     |                                                                                                | confirmacion |
    | Pablo    | Alimento       | 2024-05-02         |      S/.500          | Ninguna     |

Escenario: Filtrar gasto
    Given el creador desea ver un recurso de un tipo en específico.
    And se encuentra en la sección de "Gestión de Gastos" del apartado de <Mi Granja>.
    When seleccione el tipo de gasto que sea filtrar (todos, salud, alimento o mantenimiento de criadero)
    And haga clic en el botón <Filtrar>
    Then el sistema le mostrará una lista de todos los gastos que pertenezcan a ese tipo.

Examples:
    | criador  | Tipo de Gasto  | fecha              | Monto Gastado        | Detalle     |                                                                                                | confirmacion |
    | Pablo    | Alimento       | 2024-05-02         |      S/.500          | Ninguna     |