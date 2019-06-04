#!/bin/bash

###################################################################
# Script para dump de backup dos banco de dados SGBD MySQL        #
###################################################################
# Fonte e criacao: Site oficial do MySQL  e outros                #
###################################################################
# Adaptado e melhorado por Michel Peterson Em: 05/11/2016         #
###################################################################
# Implantacao correcoes e melhoria por Gilberto Alcantara         #
###################################################################
# Alterado por : Gilberto Alcâara Em 03/03/2016                  #
# Colocar as variaveis AMBIENTE e SGBD para o cabecalho do e-mail #
###################################################################
# Alterado por : Gilberto Alcantara Em 30/06/2016                 #
# Modificar a linha de execucao para nao conter a senha do usuario#
# operador e com isso melhorar a seguranca usando o -login-path   #
# e o utilitario mysql_config_editor                              #
###################################################################
# Alterado por : Gilberto Alcantara Em 29/06/2016                 #
# Modificar a linha que pega cada nome de banco de dadoso para nao#
# conter a senha do usuario e com isso melhorar a seguranca usando#
# o -login-path com a variavel $LOGINPATH                         #
###################################################################
# Alterado por : Gilberto Alcantara Em 17/02/2017                 #
# Criar LOGINPATH_LOCAL e retirar totalmente acesso com a conta   #
# root, bem como remover qualquer texto com usuario e senha       #
###################################################################
# Alterado por Gilberto Alcantara, em 26/04/2017 para colocar as  #
# sobre o servidor canudos                                        #
###################################################################
# Inserido parametro --routines por Bruno Novaes em 30/10/2018    #
###################################################################

BACKUP=/backup/mysql
DATA=`/bin/date +%Y%m%d.%H%M`

DIRLOG=/backup/mysql/log
ERRORLOG=$DIRLOG/dump-mysql.errorlog
LOG=$DIRLOG/dump-mysql.log

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

function CheckIntegrity {
    	gzip -t $BACKUP/$banco-$DATA.dmp.gz &> /dev/null
    	checkexitcode=$?
	if [ $checkexitcode -eq 0 ];then
	    echo "## Integridade $banco": BOM! | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
	    let GoodCount++
      	else
	    echo "## Integridade $banco": RUIM! | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
	    let BadCount++
	fi
}

function CheckCreate {
    filesize=$(du $BACKUP/$banco-$DATA.dmp.gz | cut -f1)
    if [ ! -e $BACKUP/$banco-$DATA.dmp.gz -o $filesize -lt 4 ]; then
    	echo "## Criado $banco: FALHA!" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
    else 
    	echo "## Criado $banco: OK!" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
	CheckIntegrity
    fi
}

########################################################
inicio_tarefa=$(date -u +"%s")

if [ ! -d $DIRLOG ];then
        mkdir -p $DIRLOG
        >$ERRORLOG
        >$LOG
fi

# databases=`mysql -u$USER -h$SERVIDOR -p$PASSWORD -e 'show databases;' |grep -v Database`
databases=`mysql --login-path=$LOGINPATH_LOCAL -e 'SHOW DATABASES;' | grep -v Database`

echo "----------------------------------------" | tee $LOG    | logger -t "ufba-bkp-mysql.sh"
echo "   Iniciando o backup de $DATA          " | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo "----------------------------------------" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
cd $BACKUP

BadCount=0
GoodCount=0 

for banco in $databases;do
    #mysqldump -h$SERVIDOR -u$USER -p$PASSWORD $banco --extended-insert --single-transaction --ignore-table=mysql.event --quick | gzip -1 > $banco-$DATA.dmp.gz
    mysqldump --login-path=$LOGINPATH_LOCAL $banco --routines --extended-insert --single-transaction --ignore-table=mysql.event --quick | gzip -1 > $banco-$DATA.dmp.gz
    CheckCreate
done

# Backup de usuarios e permissoes 
banco=grants
# mysql -u$USER -p$PASSWORD -BNe  "select concat('\'',user,'\'@\'',host,'\'') from mysql.user where user != 'root'" | \
mysql --login-path=$LOGINPATH_LOCAL -BNe "SELECT CONCAT('\'',user,'\'@\'',host,'\'') FROM mysql.user WHERE user != 'root'" | \

while read line; do
      # mysql -u$USER -p$PASSWORD -BNe  "show grants for $line" | sed 's/$/;/; s/\\\\/\\/g'
      mysql --login-path=$LOGINPATH_LOCAL -BNe  "SHOW GRANTS FOR $line" | sed 's/$/;/; s/\\\\/\\/g'
      done | gzip -9 > $banco-$DATA.dmp.gz
      
CheckCreate

echo "----------------------------------------" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo "== Backup de Dumps finalizado == " | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo -e "----------------------------------------\n" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"

fim_tarefa=$(date -u +"%s")
duracao_tempo=$(($fim_tarefa-$inicio_tarefa))
echo "## Bancos com erro: $BadCount ##" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo "## Bancos com sucesso: $GoodCount ##" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo "## Tempo decorrido: $(($duracao_tempo / 60)) minuto(s) e $(($duracao_tempo % 60)) segundo(s). ## " | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"
echo "----------------------------------------" | tee -a $LOG | logger -t "ufba-bkp-mysql.sh"


#Envia o email com o log de backup
mail -s "Backup $DATA-$CLIENTE-$HOST-$AMBIENTE-$SGBD" $EMAIL < $LOG

# Exclui backups mais antigos que 3 dias
/usr/bin/find $BACKUP -name "*.dmp.gz" -type f -mmin +4320 -delete
