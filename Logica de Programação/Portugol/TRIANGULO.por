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
			escreva ("\nEste tri�ngulo � Equil�tero\n")
		}
		senao 
		{
			se (l1 == l2 ou l2 == l3 ou l3 == l1)
			{
				escreva ("\nEste tri�ngulo � Is�sceles\n")
			}
			senao
			{
				escreva ("\nEste tri�ngulo � Escaleno\n")
			}
    }
  }
}
