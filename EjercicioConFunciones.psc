Algoritmo MenuPrincipal
    // Aquí definimos todas las variables que vamos a usar en el programa
    // Es como preparar todos los ingredientes antes de cocinar
    Definir opcion, continuar Como Caracter
    Definir numeroSecreto, intento, intentosMaximos, contador, adivinado Como Entero
    Definir a, b, c, suma, valor Como Real
    Definir cantidad, i Como Entero
    Definir esTriangulo Como Logico
    
    // Este es el ciclo principal del programa, se repetirá hasta que el usuario decida salir
    Repetir
        // Limpiamos la pantalla para que el menú se vea siempre fresco y ordenado
        Limpiar Pantalla
        
        // Mostramos el menú principal con las opciones disponibles
        Escribir "=== MENÚ PRINCIPAL ==="
        Escribir "1. Jugar a Adivinar el Número"
        Escribir "2. Verificar si se puede formar triángulo"
        Escribir "3. Calcular media de datos"
        Escribir "4. Salir"
        Escribir "======================"
        Escribir Sin Saltar "Selecciona una opción (1-4): "
        Leer opcion
        
        // Dependiendo de la opción que elija el usuario, ejecutamos diferentes acciones
        Segun opcion Hacer
            "1":
                // =============================================
                // JUEGO: ADIVINA EL NÚMERO SECRETO
                // =============================================
                
                // Preparamos el juego: 5 intentos máximo y un número aleatorio entre 1 y 100
                intentosMaximos <- 5
                numeroSecreto <- azar(10) + 1
                adivinado <- 0  // Esta variable nos dice si el usuario ya adivinó (0=no, 1=sí)
                
                Escribir ""
                Escribir "=== ADIVINA EL NÚMERO ==="
                Escribir "Tienes ", intentosMaximos, " intentos para adivinar (1-10)"
                Escribir ""
                
                // Empezamos el juego con el primer intento
                contador <- 1
                
                // Mientras queden intentos y no se haya adivinado, seguimos jugando
                Mientras contador <= intentosMaximos Y adivinado = 0 Hacer
                    Escribir Sin Saltar "Intento ", contador, "/", intentosMaximos, ": "
                    Leer intento
                    
                    // Comprobamos si el usuario adivinó el número
                    Si intento = numeroSecreto Entonces
                        Escribir "¡Felicidades! Adivinaste en ", contador, " intentos."
                        Escribir ""
                        adivinado <- 1  // Marcamos que ya adivinó para terminar el juego
                    Sino 
                        // Si no adivinó, le damos una pista
                        Si intento < numeroSecreto Entonces
                            Escribir "El número es MAYOR"
                        Sino
                            Escribir "El número es MENOR"
                        FinSi
                        Escribir ""
                        contador <- contador + 1  // Pasamos al siguiente intento
                    FinSi
                FinMientras
                
                // Si se acabaron los intentos y no adivinó, mostramos el número secreto
                Si adivinado = 0 Entonces
                    Escribir "¡Agotaste tus intentos! El número era: ", numeroSecreto
                    Escribir ""
                FinSi
                
            "2":
                // =============================================
                // VERIFICADOR DE TRIÁNGULOS
                // =============================================
                
                Escribir ""
                Escribir "=== VERIFICAR TRIÁNGULO ==="
                Escribir "Ingresa los 3 segmentos:"
                
                // Pedimos al usuario que ingrese los tres lados del posible triángulo
                Escribir Sin Saltar "Segmento a: "
                Leer a
                Escribir Sin Saltar "Segmento b: "
                Leer b
                Escribir Sin Saltar "Segmento c: "
                Leer c
                
                // Para que tres segmentos formen un triángulo, deben cumplir:
                // - La suma de dos lados debe ser mayor que el tercero
                // - Todos los lados deben ser positivos
                esTriangulo <- (a + b > c) Y (a + c > b) Y (b + c > a) Y (a > 0) Y (b > 0) Y (c > 0)
                
                // Mostramos el resultado de forma amigable con emojis
                Si esTriangulo Entonces
                    Escribir "SI se puede formar un triángulo con estos segmentos"
                Sino
                    Escribir "NO se puede formar un triángulo con estos segmentos"
                FinSi
                Escribir ""
                
            "3":
                // =============================================
                // CALCULADORA DE PROMEDIOS
                // =============================================
                
                Escribir ""
                Escribir "=== CALCULAR MEDIA ==="
                Escribir Sin Saltar "¿Cuántos datos quieres promediar? "
                Leer cantidad
                
                // Verificamos que el usuario ingrese un número válido de datos
                Si cantidad <= 0 Entonces
                    Escribir "Error: La cantidad debe ser mayor que 0"
                    Escribir ""
                Sino
                    // Inicializamos la suma en cero
                    suma <- 0
                    Escribir ""
                    
                    // Pedimos cada uno de los datos al usuario
                    Para i <- 1 Hasta cantidad Hacer
                        Escribir Sin Saltar "Ingresa el dato ", i, ": "
                        Leer valor
                        suma <- suma + valor  // Vamos acumulando la suma total
                    FinPara
                    
                    // Calculamos y mostramos el promedio
                    Escribir ""
                    Escribir "La media de los ", cantidad, " datos es: ", suma / cantidad
                    Escribir ""
                FinSi
                
            "4":
                // El usuario eligió salir, le despedimos amablemente
                Escribir "¡Hasta pronto!"
                
            De Otro Modo:
                // Si el usuario ingresa una opción no válida, le informamos
                Escribir "Opción no válida. Presiona Enter para continuar..."
                Esperar Tecla
        FinSegun
        
        // Si no eligió salir (opción 4), preguntamos si quiere volver al menú
        Si opcion <> "4" Entonces
            Escribir Sin Saltar "¿Volver al menú principal? (s/si = sí | n/no = no): "
            Leer continuar
            
            // Convertimos la respuesta a minúsculas para que acepte "S" o "s", "SI" o "si", etc.
            continuar <- Minusculas(continuar)
        FinSi
        
		// El programa termina cuando el usuario elige salir (opción 4) o escribe "n" o "no"
    Hasta Que opcion = "4" O continuar = "n" O continuar = "no"
    
FinAlgoritmo