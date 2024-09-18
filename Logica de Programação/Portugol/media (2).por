programa {
  funcao inicio() 
  {
    real soma = 0, media, numero
    inteiro contador, quantidade

    escreva ("Informe a quantidade de números: \n")
    leia (quantidade)

    para (contador = 1; contador <= quantidade; contador ++)
    {
      limpa ()
      escreva ("Escreva o ",contador,"º:\n")
      leia (numero)

      soma = soma + numero
      
    }
    limpa ()
    media = soma / quantidade

    escreva ("A soma dos valores é igual a: ",soma,"\n")
    escreva ("-------------------------------------------------------------------------------\n")
    escreva ("A média dos ",quantidade," valores é igual a: ",media,"\n")
  }
}
