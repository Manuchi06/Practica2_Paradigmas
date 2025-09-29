
% Parte 1: Definición del catálogo de vehículos

% Predicado vehicle(Brand, Reference, Type, Price, Year).

% Define al menos 10 vehículos
vehicle(toyota, corolla, sedan, 20000, 2021).
vehicle(toyota, rav4, suv, 28000, 2022).
vehicle(toyota, hilux, pickup, 35000, 2023).
vehicle(ford, focus, sedan, 22000, 2020).   
vehicle(ford, ranger, pickup, 33000, 2022).
vehicle(bmw, x5, suv, 60000, 2021).
vehicle(bmw, m3, sport, 70000, 2022).
vehicle(chevrolet, camaro, sport, 45000, 2021).
vehicle(nissan, frontier, pickup, 32000, 2022).
vehicle(honda, civic, sedan, 21000, 2023).


% Parte 2: Consultas y filtros básicos

% Filtrar por tipo y presupuesto
meet_budget(Reference, BudgetMax) :-
    vehicle(_, Reference, _, Price, _),
    Price =< BudgetMax.

% Lista de vehículos por marca
list_by_brand(Brand, List) :-
    findall(Ref, vehicle(Brand, Ref, _, _, _), List).


% Parte 3: Generación de reportes

% Implementa el predicado
generate_report(Brand, Type, Budget, (Vehicles, TotalValue)) :-

% Una lista de vehículos de una marca y tipo específicos que no excedan un presupuesto
    findall((Ref, Price, Year),
            (vehicle(Brand, Ref, Type, Price, Year), Price =< Budget),
            Vehicles),

    findall(Price, (vehicle(Brand, _, Type, Price, _), Price =< Budget), Prices),
    sum_list(Prices, Total),

    % Si el valor excede 1,000,000 se limita
    (Total > 1000000 -> TotalValue is 1000000 ; TotalValue is Total).


