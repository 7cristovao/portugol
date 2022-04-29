programa
{
  funcao inicio()
  {
    inteiro idade
    caracter calvo
    escreva("Qual é a sua idade?")
    leia(idade)
    escreva("Você tem cabelo? (S para sim, N para não)
    
    leia(calvo)
    
    se(idade >= 18 e calvo == 'N')
    {
      escreva("Você é adulto")
      escreva("\n")
      escreva("Você tem cabelo")
    }
    
    se(idade >= 18)
    {
      escreva("Você é adulto")
    }
    senao
    {
      se(idade >= 12)
      {
        escreva("Você é adolescente")
      }
      senao
      {
        se(idade <= 3)
        {
          escreva("Você é um bebê")
        }
        senão
        {
          escreva("Você é criança")
        }
      }
    }
  }
}
