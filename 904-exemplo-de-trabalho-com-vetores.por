programa
{
	funcao cadeia escreveVetor(inteiro listaDeNumeros[], inteiro tamanhoDoVetor, cadeia separador)
	{
		cadeia vetorConcatenado = ""
		para(inteiro contadorY=0;contadorY<tamanhoDoVetor;contadorY++)
		{
			 vetorConcatenado = vetorConcatenado + listaDeNumeros[contadorY] + separador
		}
		retorne vetorConcatenado
	}
	funcao cadeia escreveMatriz(inteiro matriz[][], inteiro tamanhoDaMatriz, cadeia separador)
	{
		cadeia matrizConcatenado = ""
		para(inteiro contadorX=0;contadorX<tamanhoDaMatriz;contadorX++)
		{
			para(inteiro contadorY=0;contadorY<tamanhoDaMatriz;contadorY++)
			{
			    matrizConcatenado += matriz[contadorX][contadorY] + separador
		    }
			matrizConcatenado += "\n"
		}
		retorne matrizConcatenado
	}
	
	funcao inicio ()
	{
        //matrizDeNumeros : matDeNum
		
		
		
		inteiro matrizDeNumeros [3][3]
		inteiro tamanhoDaLinha = 3
		inteiro tamanhoDaColuna = 3
		
		matrizDeNumeros[0][0] = 1
        matrizDeNumeros[0][1] = 2
        matrizDeNumeros[0][2] = 3
		matrizDeNumeros[1][0] = 4
        matrizDeNumeros[1][1] = 5
        matrizDeNumeros[1][2] = 6
		matrizDeNumeros[2][0] = 7
        matrizDeNumeros[2][1] = 8
        matrizDeNumeros[2][2] = 9
		
		escreva(escreveMatriz(matrizDeNumeros, tamanhoDaLinha, ","))
	}
}
