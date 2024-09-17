programa 
{
	funcao inicio() 
	{
		inteiro numero, resultado, contador, desejo
		
		escreva("Informe um número que você quer ver a sua tabuada: ")
		leia(numero)
		escreva ("Até que número você deseja ver? ")
		leia (desejo) 

		limpa()

    escreva ("tabuada de ",numero,":\n\n")		
		para (contador = 1; contador <= desejo; contador++) 
		{
			resultado = numero * contador 
			escreva (numero, " X ", contador, " = ", resultado , "\n")
		}
	}
}

