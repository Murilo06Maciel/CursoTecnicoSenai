programa {
  funcao inicio() 
  {
    real soma = 0, media, numero
    inteiro contador, quantidade

    escreva ("Informe a quantidade de n�meros: \n")
    leia (quantidade)

    para (contador = 1; contador <= quantidade; contador ++)
    {
      limpa ()
      escreva ("Escreva o ",contador,"�:\n")
      leia (numero)

      soma = soma + numero
      
    }
    limpa ()
    media = soma / quantidade

    escreva ("A soma dos valores � igual a: ",soma,"\n")
    escreva ("-------------------------------------------------------------------------------\n")
    escreva ("A m�dia dos ",quantidade," valores � igual a: ",media,"\n")
  }
}
