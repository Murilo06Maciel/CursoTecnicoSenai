programa {
  //Par ou impar  
  funcao inicio() 
  {
    real numero

    escreva ("Qual é o número? ")
    leia (numero)

    se (numero%2 == 0)
    {
      escreva ("O número é par")
      escreva  ("\n ",numero)
    }
    senao
    {
      escreva ("O número é impar")
    }
  }
}
