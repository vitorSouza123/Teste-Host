#!/bin/bash
#O script verifica se um ip esta online página está funcionando.
echo "#Caso digite um endereco web use(exemplo.com)sem o http."
read -p "Informe o ip ~#" IP
ping -c2 $IP >> ping.txt
cat ping.txt | grep icmp_seq >> verf.txt
if [ -s verf.txt ]
then
	echo "Host Online"
else
	echo "Host Offline"
fi
rm ping.txt
rm verf.txt
