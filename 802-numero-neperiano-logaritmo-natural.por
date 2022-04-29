programa 
{
    inclua biblioteca Matematica --> m
    
	funcao inicio() 
	{
	    real y
        real numero
        real base
        base = 2.718281828459045235360287
        escreva("x = ")
        leia(numero)
        y = m.logaritmo(numero, base)
        escreva("y = " + y)
	}
}
