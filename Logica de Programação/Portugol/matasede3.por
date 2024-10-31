programa {
  //Mata sede 3 

  funcao inicio() 
  {
    real rendimento, pot_saida, pot_entrada, cavalos

    escreva ("Qual a potencia de saída? ")
    leia (pot_saida)
    escreva ("Qual a potencia de entrada? ")
    leia (pot_entrada)
    
    rendimento = pot_saida/pot_entrada
    
    cavalos = rendimento*0.00135962
     
    escreva ("O rendimento total é de: ", rendimento, " watts. E potência total é de: ",cavalos, " cavalos")

  }
}
