programa
{
	funcao inicio() 
	{
		inteiro soma = 0, numero, contador
		
		escreva("Digite o n�mero at� o qual deseja somar: ")
		leia(numero)

    limpa()
    
		para (contador = 0; contador <= numero; contador ++) 
		{
			soma = soma + contador 
		}
		escreva("A soma de 1 at� ", numero, " �: ", soma, "\n")
	}
}

