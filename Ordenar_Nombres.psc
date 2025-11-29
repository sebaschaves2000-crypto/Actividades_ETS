Algoritmo Ordenar_Nombres
    Definir i, j Como Entero
    Definir temp Como Cadena
    // Definir un array para 5 nombres
    Dimension nombres[5];
	
    // Pedir 5 nombres al usuario
    Para i <- 1 Hasta 5
        Escribir "Ingresa el nombre ", i, ":"
        Leer nombres[i]
    FinPara
	
    // Ordenar los nombres alfabéticamente de mayor a menor (Z -> A)
    Para i <- 1 Hasta 4
        Para j <- i+1 Hasta 5
            Si nombres[i] < nombres[j] Entonces
                // Intercambiar posiciones
                temp <- nombres[i]
                nombres[i] <- nombres[j]
                nombres[j] <- temp
            FinSi
        FinPara
    FinPara
	
    // Mostrar los nombres ordenados
    Escribir "Nombres ordenados de mayor a menor:"
    Para i <- 1 Hasta 5
        Escribir nombres[i]
    FinPara
FinAlgoritmo
