Funcion LlamarAMiFuncion(10, MiArray)	

    Escribir "Array modificado en el programa principal:"
    Para i <- 1 Hasta N
        Escribir MiArray[i]
    FinPara
	
    Para i <- 1 Hasta N
        MiArray[i] <- i * 2
    FinPara
FinFuncion

Algoritmo Array
    // tu algoritmo principal iría aquíll
	Escribir "Ingrese el tamaño del array <10: "
    Leer N
	LlamarAMiFuncion(10, MiArray)
FinAlgoritmo
