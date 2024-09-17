programa {
  //Declaração de variáveis

  funcao inicio() 
  {
    real n1, n2

    escreva ("Digite o primeiro número: ")
    leia (n1)
    escreva ("Digite o segundo número: ")
    leia (n2)

    se(n1==n2)
    {
      escreva ("Os dois números são iguais")
    }
    senao
  {
    se(n1>n2)
    {
     escreva ("O primeiro número é maior que o segundo.")
    }
    senao 
    {
     escreva ("O segundo número é maior que o primeiro.")
    }
  }
  }
}
