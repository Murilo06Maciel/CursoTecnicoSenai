programa {
  funcao inicio() 
  {
    inteiro contador, numero, soma, soma = 0
    real media

    escreva ("Qual a quantidade de números a serem calculados? ")
    leia (numero)

    para (contador = 0; contador <= numero; contador ++)
    {
      soma = soma + contador
      media = soma / numero
    }
    
    escreva ("\nA média é: ",media,"\n")
  }
}
