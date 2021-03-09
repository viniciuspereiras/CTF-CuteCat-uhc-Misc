#!/bin/bash
mkdir data                            #faz um diretório chamado data
echo 'any key + enter to start:'       #espera qualquer tecla para entrar no loop
read key
while true                             #inicio do loop
do
	nome=$(ls | grep .zip)              #salva na variável $nome o output do ls na pasta com grep ".zip"
	nome2=${nome%.zip}                 #retira o ".zip" da variável $nome
	echo "Unziping: $nome2"     
	unzip -j -P $nome2 $nome2.zip      #extrai o que tiver no zip com a senha $nome
	status=$(echo $?)                  #salva se o ultimo comando deu certo ou não na variável status
	if [[ $status != 0 ]]              #se o comando nao der certo
	then
	echo "Error extracting $nome2.zip" 
	exit                               #encerra o programa
	fi                                 #acaba o if
	mv $nome2.zip ./data              #move o zip de origem para a pasta data
done
