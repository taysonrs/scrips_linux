#!/bin/bash

#
#Scrip para converter encode UTF-16 criado pelo Windows para ASCII
#Tayson
#27 de fevereiro de 2021
#
#v.1
#
#
#

#Verifica o tipo de arquivo 
#Salva a lista dos codados em UTF-16 em um arquivo
file * | grep UTF-16 | cut -d: -f 1 >> lista-arqs_UTF-16.txt

mkdir convertidos
pasta=convertidos

echo -e "Convertendo UTF-16 para ASCII \n"

arquivos=lista-arqs_UTF-16.txt

#Loop para ler os arquivos e fazer a conversao
for arq in $(cat $arquivos)
do
	echo "Convertendo: $arq"
	iconv -f UTF-16 -t US-ASCII $arq -o $pasta/$arq 
done
