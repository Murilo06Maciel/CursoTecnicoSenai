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

    escreva("\nO valor em polegada � igual a: ", polegada, "pol")
    escreva("\nO valor em jarda � igual a: ", jarda, "yd")
    escreva("\nO valor em centimetro � igual a: ", centrimetro, "cm")
    escreva("\nO valor em kilometro � igual a: ", kilometro, "km")       
  }
}
