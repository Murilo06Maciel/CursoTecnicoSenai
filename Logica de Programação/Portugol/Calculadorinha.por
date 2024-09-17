using System;
					
public class Program
{
	public static void Main()
	{
		double resultado;
		Console.WriteLine("Qual o primeiro n�mero?\n");
		if (double.TryParse(Console.ReadLine(), out double numero1))
		{
			Console.WriteLine("\nQual o segundo n�mero?");
			if (double.TryParse(Console.ReadLine(), out double numero2))
			{
				Console.WriteLine("\nQual o operador desejado?");
				Console.WriteLine("1) +\n");
				Console.WriteLine("2) -\n");
				Console.WriteLine("3) *\n");
				Console.WriteLine("4) /\n");
				if (int.TryParse(Console.ReadLine(), out int operador))
					{

					switch (operador)
						{
							case 1:
								resultado = numero1 + numero2;
								Console.WriteLine("O resultado desta soma � de: "+resultado);
								break;
							case 2:
								resultado = numero1 - numero2;
								Console.WriteLine("O resultado desta subtra��o � de: "+resultado);
								break;
							case 3:
								resultado = numero1 * numero2;
								Console.WriteLine("O resultado desta multilpica��o � de: "+resultado);
								break;					
							case 4:
								if (numero2 != 0)
								{
									resultado = numero1 / numero2;
									Console.WriteLine("O resultado desta divis�o � de: "+resultado);
								}
								else
									Console.WriteLine("Opera��o inv�lida, divis�o por 0.");
								break;
							default:
								Console.WriteLine("Op��o inv�lida!");
								break;
						}
					}
					else 
					{
					Console.WriteLine("\nO que foi digitado n�o � um n�mero. Por favor insira um n�mero.");
					}
					
			}	
			else 
			{
			Console.WriteLine("\nO que foi digitado n�o � um n�mero. Por favor insira um n�mero.");
			}
				
		}
		else 
		{
		Console.WriteLine("\nO que foi digitado n�o � um n�mero. Por favor insira um n�mero.");
		}
			
		
	}
}