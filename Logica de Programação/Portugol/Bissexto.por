programa {
  //Bissexto
  funcao inicio()
  {
    real ano

    escreva ("Qual � o ano que deseja? ")
    leia (ano)

    se (ano%100 == 0)
    {
      se (ano%400 == 0)
     {
        escreva ("O ano em quest�o � (foi) um ano bissexto.")
     }
      senao
      {
        escreva ("O ano em quest�o n�o � (foi) um ano bissexto. ")
      }
    }
    senao
    {
     se (ano%4 == 0)
     {
      escreva ("O ano em quest�o � (foi) um ano bissexto.")
     }
    senao
    {
      escreva ("O ano em quest�o n�o � (foi) um ano bissexto. ")
    }
    }
  }
}

