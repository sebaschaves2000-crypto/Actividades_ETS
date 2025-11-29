Algoritmo Multiplos_de_3
//Declaramos el número inicial (n) y el contador (i) 
	Definir n,i Como Entero
//Pide un numero que sea igual o mayor que 5 y menor o igual que 10
	Repetir
	Escribir "Introduce un número entre 5 y 10"
	Leer n
Hasta Que n >= 5 y n <= 10 //Aqui se repite hasta que la condicion se cumpla
para i <- n Hasta 50 Hacer //Recorre desde el numero dado hasta 50 
	si i % 3 = 0 Entonces // Si el numero actual es múltiplo de 3 se muestra
		Escribir i
	FinSi
FinPara
	
FinAlgoritmo
