using System;
					
public class Program
{
	public static void Main()
	{
		double resultado;
		Console.WriteLine("Qual o primeiro número?\n");
		if (double.TryParse(Console.ReadLine(), out double numero1))
		{
			Console.WriteLine("\nQual o segundo número?");
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
								Console.WriteLine("O resultado desta soma é de: "+resultado);
								break;
							case 2:
								resultado = numero1 - numero2;
								Console.WriteLine("O resultado desta subtração é de: "+resultado);
								break;
							case 3:
								resultado = numero1 * numero2;
								Console.WriteLine("O resultado desta multilpicação é de: "+resultado);
								break;					
							case 4:
								if (numero2 != 0)
								{
									resultado = numero1 / numero2;
									Console.WriteLine("O resultado desta divisão é de: "+resultado);
								}
								else
									Console.WriteLine("Operação inválida, divisão por 0.");
								break;
							default:
								Console.WriteLine("Opção invélida!");
								break;
						}
					}
					else 
					{
					Console.WriteLine("\nO que foi digitado não é um número. Por favor insira um número.");
					}
					
			}	
			else 
			{
			Console.WriteLine("\nO que foi digitado não é um número. Por favor insira um número.");
			}
				
		}
		else 
		{
		Console.WriteLine("\nO que foi digitado não é um número. Por favor insira um número.");
		}
			
		
	}
}