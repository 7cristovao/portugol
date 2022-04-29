programa
{
  funcao inicio()
  {
    escreva("Insira o número para contar: \n")
    
    inteiro contador = 0
    inteiro finalDoContador
    escreva("Contador: escreva até quando será contado: \n")
    leia(finalDoContador)
    escreva("contando de 0 até " + finalDoContador + "\n")
    enquanto(contador < finalDoContador)
    {
      escreva("Valor do contador: " + contador + "\n")
      contador += 1
    }
  }
}
