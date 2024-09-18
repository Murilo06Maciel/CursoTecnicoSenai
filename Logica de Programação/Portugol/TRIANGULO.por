programa {
  //TRIANGULO

  funcao inicio() 
  {
    real l1, l2, l3

    escreva ("Qual o comprimento do lado? ")
    leia (l1)
    escreva ("Qual o comprimento do lado? ")
    leia (l2)
    escreva ("Qual o comprimento do lado? ")
    leia (l3)

    se (l1 == l2 e l1 == l3)
		{
			escreva ("\nEste triângulo é Equilátero\n")
		}
		senao 
		{
			se (l1 == l2 ou l2 == l3 ou l3 == l1)
			{
				escreva ("\nEste triângulo é Isósceles\n")
			}
			senao
			{
				escreva ("\nEste triângulo é Escaleno\n")
			}
    }
  }
}
