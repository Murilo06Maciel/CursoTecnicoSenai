programa
{
	funcao inicio() 
	{
		inteiro contador = 1, quantidade
		
		real numero, media, soma = 0

		escreva ("Qual a quantidade de n�meros que v�o ser calculados?")
		leia (quantidade)
		
		enquanto(contador <= quantidade) 
		{
			limpa()
			escreva("Digite o ", contador, "� n�mero: ")
			leia(numero)
			
			soma = soma + numero  	
			contador = contador + 1  
		}
		
		media = soma / 10
		
		limpa()
		escreva("A m�dia dos n�meros �: ", media, "\n")
	}
}

