programa
{
	funcao inicio() 
	{
		inteiro contador = 1, quantidade
		
		real numero, media, soma = 0

		escreva ("Qual a quantidade de números que vão ser calculados?")
		leia (quantidade)
		
		enquanto(contador <= quantidade) 
		{
			limpa()
			escreva("Digite o ", contador, "º número: ")
			leia(numero)
			
			soma = soma + numero  	
			contador = contador + 1  
		}
		
		media = soma / 10
		
		limpa()
		escreva("A média dos números é: ", media, "\n")
	}
}

