#!/bin/bash
###################################################################
# Script para manuntenç de banco de dados SGBD MySQL             #
###################################################################
# Fonte e criacao: Site e blogs de MySQL                          #
###################################################################
# Adaptado e melhorado por Gilberto Alcâara  Em: 12/06/2016      #
###################################################################
# Implantacao correcoes e melhoria por Gilberto Alcantara         #
###################################################################
# Alterado por : Gilberto Alcantara Em 18/01/2017                 #
# Modificar o script para trazer os tempos de execucao para cada  #
# banco de dados e por fim o tempo total e quantidade de bancos   #
###################################################################
BACKUP=/backup/mysql
DATA=`/bin/date +%Y%m%d.%I%M`

DIRLOG=/backup/mysql/log
ERRORLOG=$DIRLOG/manut-mysql.errorlog
LOG=$DIRLOG/manut-mysql.log

#Define o CLIENTE e Host do servidor

#Define o CLIENTE e Host do servidor
CLIENTE="UFBA"
HOST="canudos"
AMBIENTE="Producao"
SGBD="MySQL.5.7"
SERVIDOR="localhost"
# USER="operador"  -- Retirado por questao de seguranca
# PASSWORD="-------" -- Retirado por questao de seguranca
LOGINPATH="canudos"
LOGINPATH_LOCAL="canudos_local"
EMAIL="bancodedados-l@listas.ufba.br"

########################################################
inicio_tarefa_banco=$(date -u +"%s")
inicio_tarefa_total=$(date -u +"%s")


if [ ! -d $DIRLOG ];then
        mkdir -p $DIRLOG
        >$ERRORLOG
        >$LOG
fi

# Consultar os nomes do banco

#databases=`mysql -u$USER -h$SERVIDOR -p$PASSWORD -e 'show databases;' |grep -v Database`
databases=`mysql --login-path=$LOGINPATH_LOCAL -e 'SHOW DATABASES;' | grep -v Database`

echo "-----------------------------------------" | tee $LOG    | logger -t "ufba-man-mysql.sh"
echo "   Iniciando o manutencao em $DATA       " | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo "-----------------------------------------" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
cd $BACKUP

total_bancos=0

for banco in $databases;do
        echo "Executando manutencao em: $banco" >> $LOG

        #mysqlcheck -h$SERVIDOR -u$USER -p$PASSWORD --auto-repair -o $banco
        mysqlcheck --login-path=$LOGINPATH_LOCAL --auto-repair -o $banco
	fim_tarefa_banco=$(date -u +"%s")
        duracao_tempo_banco=$(($fim_tarefa_banco-$inicio_tarefa_banco));
        echo "## Tempo decorrido Banco : $banco - $(($duracao_tempo_banco / 60)) minuto(s) e $(($duracao_tempo_banco % 60)) segundo(s). ## " | tee -a $LOG | 
logger -t "ufba-bkp-mysql.sh"
        total_bancos=$((total_bancos + 1));
done

echo "----------------------------------------" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo "== Manutencao de Bancos Finalizado == " | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo -e "----------------------------------------\n" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"

fim_tarefa_total=$(date -u +"%s")
duracao_tempo_total=$(($fim_tarefa_total-$inicio_tarefa_total));
echo "------------------------------------------" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo "== Quantidade de Bancos : $total_bancos ==" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo "== Tempo Total Decorrido: $(($duracao_tempo_total / 60)) minuto(s) e $(($duracao_tempo_total % 60)) segundo(s). ==" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo "------------------------------------------" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"


#Envia o email com o log de manutencao
mail -s "Manutencao $DATA-$CLIENTE-$HOST-$AMBIENTE-$SGBD" $EMAIL < $LOG
