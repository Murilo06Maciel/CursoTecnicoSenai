programa {
  //Qual dos tr�s � maior?

  funcao inicio() 
  {
    real n1, n2, n3

    escreva ("Digite o primeiro valor. ")
    leia (n1)
    escreva ("Digite o segundo valor. ")
    leia (n2)
    escreva ("Digite o terceiro valor. ")
    leia (n3)

    se ((n1==n2) e (n1==n3))
    {
      escreva ("Os n�meros s�o iguais.")
    }
    senao
    {
    se ((n1>n2) e (n1>n3))
    {
      escreva ("O primeiro n�mero � o maior.")
    }
    }

    se ((n1<n2) e (n2>n3))
    {
      escreva ("O segundo n�mero � o maior.")
    }
    senao
    {
    se ((n1<n3) e (n1<n3))
    {
      escreva ("O terceiro n�mero � o maior.")
    }
    }
  }
}
