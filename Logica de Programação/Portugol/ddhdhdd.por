programa {
  funcao inicio() 
  {
    inteiro numeros, contador, media
    real soma

    escreva ("Digite a quantiade de n�meros a serem calculados: ")
    leia (numeros)
    
     para (contador = 0; contador <= numeros; contador ++)
    {
      escreva ("O numero agora � ",contador,"\n")
    }

    soma = soma + contador
    media = (contador ++) / 2

    escreva ("A m�dia �: ",media,"\n")


  }
}
