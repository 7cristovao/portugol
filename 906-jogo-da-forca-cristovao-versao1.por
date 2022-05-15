programa
{
	
inclua biblioteca Texto --> tx
	funcao inicio()
	{
	     escreva("#############\n")
		escreva("JOGO DA FORCA\n")
		escreva("#############\n")
		caracter x = 'N'
		cadeia palavra
		caracter letra //inserir depois
		inteiro tamanho
		enquanto (x == 'N' ou x == 'n')
		{
			escreva("Você quer continuar (S/N): ")
			leia(x)
			se(x == 'N' ou x == 'n')
			{
				pare
			}
			senao
			{
				escreva("\nBem vindo ao Jogo da Forca!\n")
				escreva("Jogador 1: digite uma palavra e aperte ENTER: ")
				leia(palavra)
		                limpa()
				
				// Obtém o número de caracteres armazenados na variável
				tamanho = tx.numero_caracteres(palavra) // variável palavra
		
				escreva("Sua palavra possui ", tamanho, " caracteres\n")
		
				para (inteiro i = 0; i < tamanho; i++)
				{
					escreva(" ")
					escreva("_")
				}
	
				escreva("\n\nJogador 2: você precisa descobrir a palavra")
				escreva("\n\nDigite uma letra: ")
				leia(letra)
				escreva("\nVocê digitou: ", letra, "\n")
		
				para (inteiro i = 0; i < tamanho; i++)
				{
					se(letra == tx.obter_caracter(palavra, i))
					{
						escreva(tx.obter_caracter(palavra, i))		
					}
					senao
					{
						escreva("_")
					}
				}
			     	escreva("\n")
			}
		}
		escreva("\nfim")
	}
}
