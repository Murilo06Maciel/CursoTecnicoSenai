programa {
  //Conpanhia de carros
  
  funcao inicio() 
  {
    real salario, mes, comissao, valor_total, venda, preco
    cadeia nome

    escreva ("Qual o nome do vendedor? ")
    leia (nome)
    escreva ("Quanto meses o vendedor está trabalhando na companhia? ")
    leia (mes)
    escreva ("Quantos carros ele vendeu? ")
    leia (venda)
    escreva ("Quantos reais ele conseguiu vender? ")
    leia (preco)

    comissao = venda*50
    salario = 500
    valor_total = (salario + comissao +(preco*5/100))

    escreva ("O vendedor ",nome," possui salario de R$",salario,". Ele(a) está trabalhando a ",mes," meses, realizou cerca de R$",comissao," em vendas. com um valor total de R$",valor_total,"")
  }
}
