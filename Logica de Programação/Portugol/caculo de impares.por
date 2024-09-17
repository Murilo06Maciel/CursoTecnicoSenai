programa 
{
  funcao inicio() 
  {
    inteiro  contador
    real soma = 0

    para (contador = 1;  contador <= 250; contador ++)
    {
      se (contador % 2 == 1)
      {    
        escreva ("\n",contador)
        soma = soma + contador
      }
    }
    escreva ("\n\nA soma dos números é: ",soma)
    escreva ("\n----------------------------------------------------------------------------------------------------------")
    se (soma % 2 == 0)
    {
      escreva ("\nO resultado é par (",soma,")")
      escreva ("\n----------------------------------------------------------------------------------------------------------")
    }
    senao
    se (soma % 2 == 1)
    {
      escreva ("\nO resultado é impar (",soma,")")
      escreva ("\n----------------------------------------------------------------------------------------------------------")
    }
  } 
}
