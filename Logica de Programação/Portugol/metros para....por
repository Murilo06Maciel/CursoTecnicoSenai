programa {
  //metros para...

  funcao inicio() 
  {
    real metros, polegada, jarda, centrimetro, kilometro
    escreva ("digite o valor em metros: ")
    leia (metros)
    polegada = metros/0.0254
    jarda = metros/0.9144
    centrimetro = metros/0.01
    kilometro = metros/1000

    escreva("\nO valor em polegada é igual a: ", polegada, "pol")
    escreva("\nO valor em jarda é igual a: ", jarda, "yd")
    escreva("\nO valor em centimetro é igual a: ", centrimetro, "cm")
    escreva("\nO valor em kilometro é igual a: ", kilometro, "km")       
  }
}
