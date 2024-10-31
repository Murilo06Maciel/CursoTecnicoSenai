programa {
  //PASSAGEM

  funcao inicio()
  {
    real passagem, preco, idade

    escreva ("Qual o valor da passagem? ")
    leia (passagem)
    escreva ("Qual a idade do passageiro? ")
    leia (idade)

    preco = passagem/3

    se (idade>60 ou idade<6)
    {
      escreva ("O valor da passagem será de: ",preco,"")
    }
    senao
    {
      escreva ("O valor da passagem será de: ",passagem,"")
    }
  }
}
