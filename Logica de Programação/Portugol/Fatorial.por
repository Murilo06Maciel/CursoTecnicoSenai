programa {
  funcao inicio() 
  {
    real numero, resultado = 1
    inteiro contador

    escreva ("Qual o n�mero que voc� deseja saber sua fatorial? ")
    leia (numero)

    limpa ()

    para (contador = 1; contador <= numero; contador ++)
    {
      resultado = resultado * contador
    }
    
    escreva ("\nO resultado da fatorial de ",numero," �: ",resultado,"\n")
  }
}
