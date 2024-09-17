programa 
{
  funcao inicio() 
  {
    inteiro contador
    real soma = 0
    contador = 1

    faca
    {
      se (contador % 2 != 0)
      {    
        escreva ("\n", contador)
        soma = soma + contador
      }
      contador = contador + 1
    }
    enquanto (contador <= 250)

    escreva ("\n\nA soma dos números é: ", soma)
    escreva ("\n----------------------------------------------------------------------------------------------------------")
    
    se (soma % 2 == 0)
    {
      escreva ("\nO resultado é par (", soma, ")")
      escreva ("\n----------------------------------------------------------------------------------------------------------")
    }
    senao
    {
      escreva ("\nO resultado é ímpar (", soma, ")")
      escreva ("\n----------------------------------------------------------------------------------------------------------")
    }
  } 
}
