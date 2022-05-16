programa {
    inclua biblioteca Texto
    
	cadeia palavraSecreta
	inteiro quantidadeDeErros = 0
	// inserir um vetor com um único espaço (máximo do portugol são 28)
	caracter letrasAcertadas[] = {
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' ',
	    ' '
	}
	
	funcao inicio() {
		escreva("-------------")
		escreva("\nJOGO DA FORCA")
		escreva("\n-------------")
		turnoJogador1()
		turnoJogador2()
	} 
	
	funcao quebraDeLinha()
	{
	    escreva("\n")
	}
	
	funcao turnoJogador1()
	{
        escreva("\n\nJogador 1: digite a palavra secreta: ")
		leia(palavraSecreta)
		limpa()
	}
	
	funcao turnoJogador2()
	{
	    logico jogoContinua = verdadeiro // 1
	    enquanto(jogoContinua)
	    {
	        caracter letra
	        escreva("\n\nJogador 2: digite uma letra: ")
	        leia(letra)
	        
	        logico jogadorAcertou = letraEstaNaPalavraSecreta(letra, palavraSecreta)
	        logico estaFaltandoLetras = falso
	        se(jogadorAcertou)
	        {
	            guardaLetraAcertada(letra)
	        }
	        senao
	        {
	            quantidadeDeErros++
	        }
	        limpa()
	        estaFaltandoLetras = escrevaPalavraSecretaComAsLetrasCertas()
	        se(quantidadeDeErros == 6)
	        {
	            jogoContinua = falso
	            escreva("\nVocê perdeu")
	        }
	        senao se (estaFaltandoLetras == falso)
	        {
	            jogoContinua = falso
	            escreva("\nVocê ganhou")
	        }
	    }
	}
	
	funcao logico escrevaPalavraSecretaComAsLetrasCertas()
	{
	    logico estaFaltandoLetras = falso
	    inteiro tamanhoDaPalavra = Texto.numero_caracteres(palavraSecreta)
	    para(inteiro indiceDaPalavraSecreta = 0; indiceDaPalavraSecreta < tamanhoDaPalavra; indiceDaPalavraSecreta++)
	    {
	        caracter letraTestada = Texto.obter_caracter(palavraSecreta, indiceDaPalavraSecreta)
	        logico acertou = falso
	        para(inteiro indiceDaLetraAcertada = 0; indiceDaLetraAcertada < 28; indiceDaLetraAcertada++)
	        {
	            se(letrasAcertadas[indiceDaLetraAcertada] == letraTestada)
	            {
	                acertou = verdadeiro    
	            }
	        }
	        se (acertou)
	        {
	            escreva(letraTestada)
	        }
	        senao
	        {
	            escreva('_')
	            estaFaltandoLetras = verdadeiro
	        }
	    }
	   retorne estaFaltandoLetras
	}
	
	funcao guardaLetraAcertada(caracter letra)
	{
	    inteiro indiceLetraGuardada = 0
	    logico procuraPosicaoVazia = verdadeiro
	    enquanto(procuraPosicaoVazia)
	    {
	        se(letrasAcertadas[indiceLetraGuardada] == letra)
	        {
	            procuraPosicaoVazia = falso
	        }
	        se(letrasAcertadas[indiceLetraGuardada] == ' ')
	        {
	            letrasAcertadas[indiceLetraGuardada] = letra
	            procuraPosicaoVazia = falso
	        }
	        indiceLetraGuardada++
	        se(indiceLetraGuardada > 28)
	        {
	            procuraPosicaoVazia = falso
	        }
	    }
	}
	
	funcao logico letraEstaNaPalavraSecreta(caracter letra, cadeia palavraSecretaParaTestar)
	{
	    inteiro tamanhoDaPalavra = Texto.numero_caracteres(palavraSecretaParaTestar)
	    para(inteiro indiceDaPalavraSecreta = 0; indiceDaPalavraSecreta < tamanhoDaPalavra; indiceDaPalavraSecreta++)
	    {
	        caracter letraTestada = Texto.obter_caracter(palavraSecretaParaTestar, indiceDaPalavraSecreta)
	        
	        se(letraTestada == letra)
	        {
	            retorne verdadeiro
	        }
	    }
	    retorne falso
	}
}
