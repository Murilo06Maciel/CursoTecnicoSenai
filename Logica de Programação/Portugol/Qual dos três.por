programa {
  //Qual dos três é maior?

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
      escreva ("Os números são iguais.")
    }
    senao
    {
    se ((n1>n2) e (n1>n3))
    {
      escreva ("O primeiro número é o maior.")
    }
    }

    se ((n1<n2) e (n2>n3))
    {
      escreva ("O segundo número é o maior.")
    }
    senao
    {
    se ((n1<n3) e (n1<n3))
    {
      escreva ("O terceiro número é o maior.")
    }
    }
  }
}
