programa {
  funcao inicio() 
  {
    inteiro numeros, contador, media
    real soma

    escreva ("Digite a quantiade de números a serem calculados: ")
    leia (numeros)
    
     para (contador = 0; contador <= numeros; contador ++)
    {
      escreva ("O numero agora é ",contador,"\n")
    }

    soma = soma + contador
    media = (contador ++) / 2

    escreva ("A média é: ",media,"\n")


  }
}
