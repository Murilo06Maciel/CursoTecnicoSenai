programa {
  funcao inicio() 
  {
    logico boia_a,boia_b,boia_c, continuar
    real limite
    faca
    {
    limpa()
    escreva("A boia A est� cheia? \n")
    leia(boia_a)
    escreva("\nA boia B est� cheia? \n")
    leia(boia_b)
    escreva("\nA boia C est� cheia? \n")
    leia(boia_c)

    se(boia_a == 0 e boia_b == 0 e boia_c == 0)
    {
      limpa()
        escreva("\nLigue a v�lvula.")
        escreva("\nN�o ligue a bomba.")
    }
    senao se(boia_a == 0 e boia_b == 0 e boia_c == 1)
    {
      limpa()
      escreva("\nLigue a v�lvula.")
      escreva("\nN�o ligue a bomba.")
    }
    senao se(boia_a == 0 e boia_b == 1 e boia_c == 0)
    {
      limpa()
      escreva("\nErro, tente novamente")
    }
    senao se(boia_a == 0 e boia_b == 1 e boia_c == 1)
    {
      limpa()
      escreva("\nErro, tente novamente")
    }
    senao se(boia_a == 1 e boia_b == 0 e boia_c == 0)
    {
      limpa()
      escreva("\nLigue a v�lvula.")
      escreva("\nLigue a bomba.")
    }
    senao se(boia_a == 1 e boia_b == 0 e boia_c == 1)
    {
      limpa()
      escreva("\nLigue a v�lvula.")
      escreva("\nN�o ligue a bomba.")

    }
    senao se(boia_a == 1 e boia_b == 0 e boia_c == 0)
    {
      limpa()
      escreva("\nDesligue a v�lvula.")
      escreva("\nLigue a bomba.")
    }
    senao se(boia_a == 1 e boia_b == 1 e boia_c == 0)
    {
      limpa()
      escreva("\nDesligue a v�lvula.")
      escreva("\nLigue a bomba.")
    }
    senao
    {
      limpa()
      escreva("\nDesligue a v�lvula.")
      escreva("\nN�o ligue a bomba.")
    }

    escreva("\n\nDeseja continuar? ")
		leia(continuar)

    } enquanto(continuar)
  }
}
