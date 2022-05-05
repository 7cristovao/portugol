programa
{
	funcao inicio ()
	{
		inteiro matriz[3][3] = {
			{11,12,13},
			{21,22,23},
			{31,32,33}
		}
		para(inteiro posi = 0;posi <3;posi++){
			para(inteiro j=0;j<3;j++ ){
			escreva("\n" + matriz[posi][j])
			}
		}
	}
}
