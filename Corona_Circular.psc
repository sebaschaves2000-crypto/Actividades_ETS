Algoritmo Corona_Circular
    // Definición de variables: r1 y r2 son los radios que ingresa el usuario,
    // r es el radio menor, E es el radio mayor, area es el resultado del área de la corona
    Definir r1, r2, r, E, area Como Real
    
    // Pedir al usuario el primer radio
    Escribir "Ingresa el primer radio:"
    Leer r1
    
    // Pedir al usuario el segundo radio
    Escribir "Ingresa el segundo radio:"
    Leer r2
    
    // Determinar cuál radio es mayor (E) y cuál es menor (r)
    Si r1 > r2 Entonces
        E <- r1   // Si r1 es mayor, se asigna a E
        r <- r2   // r2 queda como el radio menor
    Sino
        E <- r2   // Si r2 es mayor, se asigna a E
        r <- r1   // r1 queda como el radio menor
    FinSi
    
    // Calcular el área de la corona circular: ?*(R^2 - r^2)
    area <- PI * (E*E - r*r)
    
    // Mostrar el resultado al usuario
    Escribir "El área de la corona circular es:" area
	
FinAlgoritmo

