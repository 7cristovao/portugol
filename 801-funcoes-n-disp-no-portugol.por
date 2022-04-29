programa 
{
    inclua biblioteca Matematica --> m
    	
	funcao inicio() 
	{
		real y, x, a, b, w, z, u, v, n, base
		escreva(" OS VALORES EM PORTUGOL ESTAO EM RADIANOS")
		escreva("\nx = ")
		leia(x)
	  	y = 1 / m.cosseno(x)
		escreva("\nsecante de x = " + y)
		escreva("\na = ")
		leia(a)
        escreva("\nb = ")
        leia(b)
        base = 10
        w = m.logaritmo(a,base) / m.logaritmo(b,base) // logaritmo de a na base b
        escreva("\nlogaritmo de a na base b = " + w)
        escreva("\nu (base u^v) = ")
        leia(u)
        escreva("\nv (expoente) = ")
        leia(v)
        escreva("\nn (raiz enesima) = ")
        leia(n)
        z = m.potencia(u, v/n) // raiz n-ésima de u
        escreva(" raiz enesima de u = " + z)
	}
}

//      ______
//     /       
//  a /    b      b/a
//   /   x     = x
// \/
/////////////////////////////
//           1
// sec x = -----
//         cos x
/////////////////////////////
//             a
//          log
//     a       c
// log   = --------
//     b       b
//          log
//             c
//
