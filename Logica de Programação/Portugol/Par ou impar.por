programa {
  //Par ou impar  
  funcao inicio() 
  {
    real numero

    escreva ("Qual � o n�mero? ")
    leia (numero)

    se (numero%2 == 0)
    {
      escreva ("O n�mero � par")
      escreva  ("\n ",numero)
    }
    senao
    {
      escreva ("O n�mero � impar")
    }
  }
}
