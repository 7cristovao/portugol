programa 
{
    inclua biblioteca Texto --> tx
    
	funcao inicio() 
	{
		cadeia nome
		escreva("Digite seu nome: ")
		leia(nome)
		
		inteiro idade
		escreva("\nDigite sua idade: ")
		leia(idade)
		
		inteiro tamanho
		tamanho = tx.numero_caracteres(nome)
		
		escreva("Seu nome possui ", tamanho, " caracteres\n")
		
		inteiro i
		
		para (i = 0; i < tamanho; i++)
		{
		    escreva(nome + "\n")
		}
		
		escreva("Ele tem " + idade + " anos")
	}
}
