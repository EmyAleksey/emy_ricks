echo -e "Escolha uma operação matemática:\n====================\n (1) Adição\n (2) Subtração\n (3) Múltiplicação\n (4) Divisão\n (5) Raiz\n (6) Potencia\n (7) Sair\n==================== "
read ope

if [ $ope -eq "7" ]; then
	exit;
	fi	
if [ $ope -eq "5" ]; then
	echo "Digite um número para a Raiz Quadrada:"
	read raiz
	num=$(echo "scale=2; sqrt($raiz)" | bc)
	echo "Raiz quadrada de $raiz é: $num"
	fi
if [ $ope != "5" ]; then
	echo "Digite um número:"
	read v1

	echo "Digite outro número:"
	read v2


	if [ $ope -eq "1" ]; then
		adi=$((v1+v2)) ;
		echo "$v1 + $v2 é igual a: $adi"
		fi
	if [ $ope = "2" ]; then
		sub=$((v1-v2)) ;
		echo "$v1 - $v2 é igual a: $sub"
		fi
	if [ $ope -eq "3" ]; then
		multi=$((v1*v2)) ;
		echo "$v1 x $v2 é igual a: $multi"
		fi
	if [ $ope -eq "4" ]; then
		divi=$((v1/v2)) ; 
		echo "$v1 / $v2 é igual a: $divi"
		fi

	if [ $ope -eq "6" ]; then
		pot=$((v1**v2)) ;
		echo "$v1 elevado a $v2 é: $pot"
		fi
fi			 																																																																																		
