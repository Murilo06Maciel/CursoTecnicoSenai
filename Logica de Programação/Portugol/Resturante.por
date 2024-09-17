programa 
{
  //RESTAURANTE

inclua biblioteca Matematica --> mat
  funcao inicio() 
  {
    real valor_lanche, valor_porcao,  valor_bebida, bebida, valor_total
    inteiro quantidade_lanche, quantidade_porcao, quantidade_bebida, pedido_lanche, pedido_porcao, pedido_bebida, pedido

    escreva ("\n Cardápio \n")
    escreva ("\n -------------------------------------------------------------------------------------------------------------------------")
    escreva ("\n Lanches \n")
    escreva ("\n 1) X-Burguer - R$ 20,90")
    escreva ("\n 2) X-Tudo - R$ 31,20")
    escreva ("\n 3) X-Bacon - R$ 22,30")
    escreva ("\n 4) X-Salada - R$ 25,00")
    escreva ("\n 5) X-Frango - R$ 21,50")
    escreva ("\n 6) X-Calabresa - R$ 21,50")
    escreva ("\n 7) Misto Quente - R$ 15,20")
    escreva ("\n 8) Pão com Ovo - R$ 10,00 \n")
    escreva ("\n -------------------------------------------------------------------------------------------------------------------------")
    escreva ("\n Porções \n")
    escreva ("\n 9) Batata Frita P - R$ 12,00")
    escreva ("\n 10) Batata Frita M - R$ 14,00")
    escreva ("\n 11) Batata com Bacon - R$ 18,00")
    escreva ("\n 12) Salada Completa - R$ 18,60")
    escreva ("\n 13) Pastel Frito - R$ 11,50")
    escreva ("\n 14) Coxinhas - R$ 8,70 \n")
    escreva ("\n -------------------------------------------------------------------------------------------------------------------------")
    escreva ("\n Bebidas \n")
    escreva ("\n 15) Suco de Fruta - R$ 10,50")
    escreva ("\n 16) Água Mineral - R$ 2,00")
    escreva ("\n 16) Refrigerante Lata - R$ 10,30")
    escreva ("\n 17) Refrigerante 1L - R$ 12,90")
    escreva ("\n 18) Refrigerante 2L - R$ 16,50")
    escreva ("\n 19) Limonada - R$ 8,50 \n")
    escreva ("\n -------------------------------------------------------------------------------------------------------------------------")
    escreva ("\n Lanchonete Carvão Grill (66) 3821-2772")
    escreva ("\n -------------------------------------------------------------------------------------------------------------------------")

    escreva ("\n Escolha: \n")
    escreva("\n 1) lanches \n")
		escreva("\n 2) porçoes \n")
		escreva("\n 3) bebidas \n\n")
    escreva ("\n Qual será o seu pedido? ")
    leia (pedido)

    escolha (pedido)
    {
			caso 1: 
		 		 escreva ("\n Lanches \n")
        escreva ("\n 1) X-Burguer - R$ 20,90")
        escreva ("\n 2) X-Tudo - R$ 31,20")
        escreva ("\n 3) X-Bacon - R$ 22,30")
        escreva ("\n 4) X-Salada - R$ 25,00")
        escreva ("\n 5) X-Frango - R$ 21,50")
        escreva ("\n 6) X-Calabresa - R$ 21,50")
        escreva ("\n 7) Misto Quente - R$ 15,20")
        escreva ("\n 8) Pão com Ovo - R$ 10,00 \n")
        escreva ("\n 9) Não desejo lanche \n")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------")
        
        escreva ("\n Qual o seu pedido? ")
        leia (pedido_lanche)
        
        
        escolha (pedido_lanche)
        {
          caso 1:
          escreva ("\n Qual a quantidade? ")
          leia (quantidade_lanche)
          valor_lanche = quantidade_lanche*20.90
          escreva ("\nO valor é de: R$", mat.arredondar(valor_lanche, 2), "\n")
          escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n") 
          pare
          caso 2:
          escreva ("\n Qual a quantidade? ")
          leia (quantidade_lanche)
          valor_lanche = quantidade_lanche*31.20
          escreva ("O valor é de: R$",valor_lanche,"")
          escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
          pare
          caso 3:
          escreva ("\n Qual a quantidade? ")
          leia (quantidade_lanche)
          valor_lanche = quantidade_lanche*22.30
          escreva ("O valor é de: R$",valor_lanche,"")
          escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
          pare
          caso 4:
          escreva ("\n Qual a quantidade? ")
          leia (quantidade_lanche)
          valor_lanche = quantidade_lanche*25.00
          escreva ("O valor é de: R$",valor_lanche,"")
          escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
          pare
          caso 5:
          escreva ("\n Qual a quantidade? ")
          leia (quantidade_lanche)
          valor_lanche = quantidade_lanche*21.50
          escreva ("O valor é de: R$",valor_lanche,"")
          escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
          pare
          caso 6:
          escreva ("\n Qual a quantidade? ")
          leia (quantidade_lanche)
          valor_lanche = quantidade_lanche*21.50
          escreva ("O valor é de: R$",valor_lanche,"")
          escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
          pare
          caso 7:
          escreva ("\n Qual a quantidade? ")
          leia (quantidade_lanche)
          valor_lanche = quantidade_lanche*15.20
          escreva ("O valor é de: R$",valor_lanche,"")
          escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
          pare
          caso 8:
          escreva ("\n Qual a quantidade? ")
          leia (quantidade_lanche)
          valor_lanche = quantidade_lanche*10.00
          escreva ("O valor é de: R$",valor_lanche,"")
          escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
          pare
          caso 9:
          valor_lanche = 1 - 1
          pare

        } 
  
		 	  caso 2:
        escreva ("\n Porções \n")
        escreva ("\n 1) Batata Frita P - R$ 12,00")
        escreva ("\n 2) Batata Frita M - R$ 14,00")
        escreva ("\n 3) Batata com Bacon - R$ 18,00")
        escreva ("\n 4) Salada Completa - R$ 18,60")
        escreva ("\n 5) Pastel Frito - R$ 11,50")
        escreva ("\n 6) Coxinhas - R$ 8,70 \n")
        escreva ("\n 7) Não desejo porção \n")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------")
        
        escreva ("\n Qual o seu pedido? ")
        leia (pedido_porcao)

        escolha (pedido_porcao)
        {
        caso 1:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_porcao)
        valor_porcao = quantidade_porcao*12.00
        escreva ("O valor é de: R$",valor_porcao,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 2:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_porcao)
        valor_porcao = quantidade_porcao*14.00
        escreva ("O valor é de: R$",valor_porcao,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 3:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_porcao)
        valor_porcao = quantidade_porcao*18.00
        escreva ("O valor é de: R$",valor_porcao,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 4:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_porcao)
        valor_porcao = quantidade_porcao*18.60
        escreva ("O valor é de: R$",valor_porcao,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 5:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_porcao)
        valor_porcao = quantidade_porcao*11.50
        escreva ("O valor é de: R$",valor_porcao,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 6:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_porcao)
        valor_porcao = quantidade_porcao*8.70
        escreva ("O valor é de: R$",valor_porcao,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare 
        caso 7:
        valor_porcao = 1 - 1
        pare      
        }
                 
		 	caso 3:
      escreva ("\n Bebidas \n")
      escreva ("\n 1) Suco de Fruta - R$ 10,50")
      escreva ("\n 2) Água Mineral - R$ 2,00")
      escreva ("\n 3) Refrigerante Lata - R$ 10,30")
      escreva ("\n 4) Refrigerante 1L - R$ 12,90")
      escreva ("\n 5) Refrigerante 2L - R$ 16,50")
      escreva ("\n 6) Limonada - R$ 8,50 \n")
      escreva ("\n 7) Não desejo bebida \n")
      escreva ("\n -------------------------------------------------------------------------------------------------------------------------")
      
      escreva ("\n Qual o seu pedido? ")
      leia (pedido_bebida)
      
      escolha (pedido_bebida)
      {
        caso 1:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_bebida)
        valor_bebida = quantidade_bebida*10.50
        escreva ("O valor é de: R$",valor_bebida,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 2:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_bebida)
        valor_bebida = quantidade_bebida*2.00
        escreva ("O valor é de: R$",valor_bebida,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 3:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_bebida)
        valor_bebida = quantidade_bebida*10.30
        escreva ("O valor é de: R$",valor_bebida,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 4:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_bebida)
        valor_bebida = quantidade_bebida*12.90
        escreva ("O valor é de: R$",valor_bebida,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 5:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_bebida)
        valor_bebida = quantidade_bebida*16.50
        escreva ("O valor é de: R$",valor_bebida,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 6:
        escreva ("\n Qual a quantidade? ")
        leia (quantidade_bebida)
        valor_bebida = quantidade_bebida*8.50
        escreva ("O valor é de: R$",valor_bebida,"")
        escreva ("\n -------------------------------------------------------------------------------------------------------------------------------- \n\n")
        pare
        caso 7:
        valor_bebida = 1 - 1
        pare        
      }
    
    }
    se ((valor_lanche != 0) e (valor_porcao != 0) e (valor_bebida != 0))
    {
    valor_total = valor_lanche + valor_porcao + valor_bebida
    escreva ("\n Total a pagar:  ---------------------------------------------------------------- R$", mat.arredondar(valor_total, 2),"\n")
    }
    se ((valor_lanche != 0) e (valor_porcao != 0) e (valor_bebida == 0))
    {
    valor_total = valor_lanche +valor_porcao
    escreva ("\n Total a pagar:  ---------------------------------------------------------------- R$", mat.arredondar(valor_total, 2),"\n")
    }
    senao
    se ((valor_lanche != 0) e (valor_porcao == 0) e (valor_bebida != 0))
    {
    valor_total = valor_lanche + valor_bebida
    escreva ("\n Total a pagar:  ---------------------------------------------------------------- R$", mat.arredondar(valor_total, 2),"\n")
    }
    senao
    se ((valor_lanche == 0) e (valor_porcao != 0) e (valor_bebida != 0))
    {
    valor_total = valor_porcao + valor_bebida
    escreva ("\n Total a pagar:  ---------------------------------------------------------------- R$", mat.arredondar(valor_total, 2),"\n")
    }
    senao    
    se ((valor_lanche == 0) e (valor_porcao == 0) e (valor_bebida == 0))
    {
    escreva ("\n Total a pagar:  ---------------------------------------------------------------- R$00.00 \n")
    }
    senao
    se ((valor_lanche != 0) e (valor_porcao == 0) e (valor_bebida == 0))
    {
    escreva ("\n Total a pagar:  ---------------------------------------------------------------- R$",valor_lanche,"\n")
    }
    senao
    se ((valor_lanche == 0) e (valor_porcao != 0) e (valor_bebida == 0))
    {
    escreva ("\n Total a pagar:  ---------------------------------------------------------------- R$",valor_porcao,"\n")
    }
    senao
    se ((valor_lanche == 0) e (valor_porcao == 0) e (valor_bebida != 0))
    {
    escreva ("\n Total a pagar:  ---------------------------------------------------------------- R$",valor_bebida,"\n")
    }
  }
}
