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
    escreva ("\n\nA soma dos n�meros �: ",soma)
    escreva ("\n----------------------------------------------------------------------------------------------------------")
    se (soma % 2 == 0)
    {
      escreva ("\nO resultado � par (",soma,")")
      escreva ("\n----------------------------------------------------------------------------------------------------------")
    }
    senao
    se (soma % 2 == 1)
    {
      escreva ("\nO resultado � impar (",soma,")")
      escreva ("\n----------------------------------------------------------------------------------------------------------")
    }
  } 
}
