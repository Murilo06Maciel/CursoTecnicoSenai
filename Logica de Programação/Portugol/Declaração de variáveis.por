programa {
  //Declara��o de vari�veis

  funcao inicio() 
  {
    real n1, n2

    escreva ("Digite o primeiro n�mero: ")
    leia (n1)
    escreva ("Digite o segundo n�mero: ")
    leia (n2)

    se(n1==n2)
    {
      escreva ("Os dois n�meros s�o iguais")
    }
    senao
  {
    se(n1>n2)
    {
     escreva ("O primeiro n�mero � maior que o segundo.")
    }
    senao 
    {
     escreva ("O segundo n�mero � maior que o primeiro.")
    }
  }
  }
}
