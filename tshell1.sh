#!/bin/bash
#set -x

function encontrar_arquivo {
	for i in $dir/*
	do
		if [ -f $i ] && [ -s $i ]; then
			var6=$(cat $i)
			return 0
		fi
	done
}

cd /home/html/inf/cursos/ci1001/tshell1
var1=$(cat PISTA1 | cut -d'|' -f2 | head -n 3 | tail -n 1)
var2=$(cat $var1 | base64 -d)
var3=$(cat "$var2")
var4=$(cat "$(find -maxdepth 1 -size $(cat ./$var3 | wc -l)c)")
var5=$(echo $var4 | rot13)
dir=$(find .$var5 -perm -o=w 2>/dev/null)
encontrar_arquivo $dir
echo "Coordenadas do tesouro:" $(echo $var6 | tr "i,s,o,e,^,-,>,<" "1,5,0,3,N,S,E,W")
