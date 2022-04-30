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
		inteiro N
		N = tamanho * idade
		escreva("\nN = " + N)
		
		inteiro i
		para(i = 1; i <= N; i++)
		{
		    escreva("\n " + i)
		}
	}
}
