programa {
  //C�lculo de imc

  funcao inicio() 
  {
    real peso, altura, imc
    escreva ("digite o valor do peso: ")
    leia (peso)
    escreva ("digite o valor da altura: ")
    leia (altura)

    imc = peso/(altura*altura)

    escreva("\nO valor do imc � igual a: ", imc)
  }
}
