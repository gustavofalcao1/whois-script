#!/bin/bash

clear
sudo apt-get install whois gedit -y
clear
echo ""
echo "================================================================================"
echo "                                 Who Is"
echo "================================================================================"
echo ""
echo "                    ===== Digite o IP ou Domínio: ====="
read ip
echo ""
echo "        ===== Quar que os dados capturados sejam salvos em nota? ====="
echo ""
echo "                                1 - Sim"
echo "                                2 - Não *"
echo ""
echo "                           ===== Resposta: ====="
read opt
echo ""
echo "                     Pressione <ENTER> para buscar dados!"
read #pause
echo "================================================================================"
echo ""
clear
echo "================================================================================"
echo "                                   Who Is"
echo "================================================================================"
echo ""
echo "                       ===== Dados encontrados: ====="
echo ""
if [[ $opt -eq 1 ]];
then
  whois $ip
  echo ""
  echo "============================================================================="
  echo ""
  echo "                    Pressione <ENTER> para ver a nota!"
  read #pause
  whois $ip > ~/WhoIs-Note.txt & gedit ~/WhoIs-Note.txt
  exit
else
  whois $ip
fi
echo ""
echo "==============================================================================="
echo ""
echo "                       Pressione <ENTER> para sair..."
read #pause
clear
