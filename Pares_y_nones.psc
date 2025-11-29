Algoritmo Pares_y_nones
	// Definir variables
	Definir jugador, maquina, pares, nones Como cadena
	
	// Mensaje de bienvenida
	Escribir "¡Hola! Vamos a jugar a pares y nones."
	
	// Bucle para que el jugador elija entre pares (#1) o nones (#2)
	Repetir
		Escribir "Debes escoger pares con el #1 o nones con el #2"
		Leer i
	Hasta Que i = 1 o i = 2  // Repite hasta que se ingrese una opción válida
	
	// Asignar las opciones según la elección del jugador
	Si i = 1 Entonces
		jugador = "pares"   // Jugador elige pares
		maquina = "nones"  // La máquina automáticamente queda con nones
	SiNo
		jugador = "nones"   // Jugador elige nones
		maquina = "pares"   // La máquina automáticamente queda con pares
	FinSi
	
	// Mostrar las elecciones de cada uno
	Escribir "Jugador escogio: " jugador " la maquina es: " maquina
	
	// Bucle para que el jugador elija un número válido del 1 al 10
	Repetir
		Escribir "Debes escoger un número al azar del 1 al 10"
		Leer n_jugador
	Hasta Que n_jugador >= 1 y n_jugador <= 10
	
	// La máquina elige un número aleatorio entre 0 y 9 (Azar(10))
	n_maquina = Azar(10)
	Escribir "El numero de la maquina es: " n_maquina
	
	// Calcular la suma de los números
	resultado= n_jugador + n_maquina
	
	// Determinar si la suma es par o non
	Si resultado % 2 = 0 Entonces
		Escribir "La suma es par: " resultado
		// Determinar quién gana si es par
		si jugador = "pares" Entonces
			Escribir "¡Ganaste!"
		SiNo
			Escribir "¡Gano la maquina!"
		FinSi
	SiNo
		Escribir "La suma es nones: " resultado
		// Determinar quién gana si es non
		si jugador = "nones" Entonces
			Escribir "¡Ganaste!"
		SiNo
			Escribir "¡Gano la maquina!"
		FinSi
	FinSi
FinAlgoritmo
