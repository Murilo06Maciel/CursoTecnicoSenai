programa {
//L�mpadas

funcao inicio()
{
real lado_1, lado_2, area
inteiro lampada_led, lampada_incandescente, lampada_fluorescente,
potencia_led, potencia_fluorescente, potencia_incandescente, lumens, quantidade_LED, quantidade_incandescente, quantidade_fluorescente

escreva ("Digite o valor do Lado 1 do ambiente: ")
leia(lado_1)
escreva("Digite o valor do Lado 2 do ambiente: ")
leia(lado_2)
escreva ("Qual a pot�ncia da l�mpada de LED?: ")
leia (potencia_led)
escreva ("Qual a pot�ncia da l�mpada fluorescente?: ")
leia (potencia_fluorescente)
escreva ("Qual a pot�ncia da l�mpada incancescente?: ")
leia (potencia_incandescente)

area = lado_1*lado_2
lumens = area*500
lampada_led = lumens/85
lampada_incandescente = lumens/14
lampada_fluorescente = lumens/50
quantidade_LED = lampada_led/potencia_led
quantidade_incandescente = lampada_incandescente/potencia_incandescente
quantidade_fluorescente = lampada_fluorescente/potencia_fluorescente

escreva ("A �rea do ambiente � de: ,area, m�, \n")
escreva ("A quantidade de lumens � de: ,lumens, lm, \n")
escreva ("A quantidade de lampadas de LED necess�rias ser�o de:  ",quantidade_LED,"  l�mpadas \n")
escreva ("A quantidade de lampadas incandescentes necess�rias ser�o de:  ",quantidade_incandescente," l�mpadas \n")
escreva ("A quantidade de lampadas fluorescentes necess�rias ser�o de:  ",quantidade_fluorescente," l�mpadas \n")
}
}