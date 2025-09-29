Práctica 2 - Manuela Buriticá Guzmán.

Video: https://youtu.be/eNR_cW4Ibs4
 
Gestión de Catalogo de Vehículos en Prolog.

El objetivo principal de esta practica es implementar un sistema en el lenguaje de programacion Logica y funcional Prolog que permita:
1. Gestionar un catálogo de vehículos.
2. Realizar filtros por atributos.
3. Generar reportes estructurados.


Objetivos:

1. Definir un catálogo de vehículos con hechos (vehicle).
2. Implementar predicados de consulta y filtrado:
   Verificación de presupuesto (meet_budget).
   Listado por marca (list_by_brand).
3. Generar reportes con filtros múltiples (generate_report).
4. Usar findall y bagof para agrupar resultados.
5. Aplicar restricciones de valor total en el inventario.


Estructura del código y video

1. Catálogo de vehículo.
2. Consultas y filtros básicos.
3. Generación de reportes.
4. Casos de prueba.


Casos de prueba

1. ?- findall(Ref, (vehicle(toyota, Ref, suv, Price, _), Price < 30000), L).
2. ?- bagof((Type, Year, Ref), vehicle(ford, Ref, Type, _, Year), L).
3. ?- findall(Price, (vehicle(_, _, sedan, Price, _), Price < 500000), Prices),
        sum_list(Prices, Total),
        (Total > 500000 -> Limit is 500000 ; Limit is Total).

    Prices = [20000, 22000, 21000],
    Total = 63000,
    Limit = 63000.


IDES utilizados

1. Editor de texto: Visual Studio Code
2. Interprete: SWI-Prolog

