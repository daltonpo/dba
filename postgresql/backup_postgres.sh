#!/bin/bash
###################################################################
# Script para mnanutencao dos banco de dados SGBD PostgreSQL      #
###################################################################
# Fonte e criacao: Site postgres.org                              #

BACKUP=/backup/postgres
DATA=`/bin/date +%Y%m%d.%H%M`

DIRLOG=/var/backups/postgres/log
ERRORLOG=$DIRLOG/dump-postgres.errorlog
LOG=$DIRLOG/dump-postgres.log

#Define o CLIENTE e Host do servidor
CLIENTE="UFBA"
HOST="itamaraju"
AMBIENTE="Producao"
SGBD="PostgrSQL.9.5"
SERVIDOR="127.0.0.1"
USER="postgres"
EMAIL="bancodedados-l@listas.ufba.br"
PORTA="5432"

########################################################
inicio_backup_banco=$(date -u +"%s")
inicio_backup_total=$(date -u +"%s")

function CheckIntegrity {
        gzip -t $BACKUP/$banco-$DATA.dmp.gz &> /dev/null
        checkexitcode=$?
        if [ $checkexitcode -eq 0 ]; then
             echo "## Integridade $banco": BOM! | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
             let GoodCount++
        else
            echo "## Integridade $banco": RUIM! | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
           let BadCount++
        fi
}

function CheckCreate {
         filesize=$(du $BACKUP/$banco-$DATA.dmp.gz | cut -f1)
         if [ ! -e $BACKUP/$banco-$DATA.dmp.gz -o $filesize -lt 4 ]; then
              echo "## Criado $banco: FALHA!" | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
         else
             echo "## Criado $banco: OK!" | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
            CheckIntegrity
         fi
}

if [ ! -d $DIRLOG ];then
       mkdir -p $DIRLOG
      >$ERRORLOG
      >$LOG
fi

databases=$(psql -h $SERVIDOR -p $PORTA -U $USER -d postgres -c "SELECT datname FROM pg_database WHERE datname NOT IN ('template0','template1') AND SUBSTRING(datname,1,5) != 'teste';" | grep -v "datname" | grep -v "(6 rows)" | grep -v "-" | grep -v "(" | grep -v "rows)")

echo "----------------------------------------" | tee $LOG    | logger -t "ufba-bkp-postgres.sh"
echo "   Iniciando o backup de $DATA          " | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
echo "----------------------------------------" | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"

cd $BACKUP

#######################################################
BadCount=0
GoodCount=0
total_bancos=0
inicio_backup_banco=$(date -u +"%s")
inicio_backup_total=$(date -u +"%s")

for banco in $databases;do
    /usr/lib/postgresql/9.5/bin/pg_dump -h $SERVIDOR -U $USER -b -Fc $banco | gzip > $banco-$DATA.dmp.gz
    fim_backup_banco=$(date -u +"%s");
    duracao_tempo_banco=$(($fim_backup_banco-$inicio_backup_banco));
    echo "## Tempo Backup Banco : $banco - $(($duracao_tempo_banco / 60)) minuto(s) e $(($duracao_tempo_banco % 60)) segundo(s). ## " | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
    total_bancos=$((total_bancos + 1));
    inicio_backup_banco=$(date -u +"%s");
    CheckCreate
done

# Backup de schemas
/usr/lib/postgresql/9.5/bin/pg_dumpall -h $SERVIDOR -U $USER -s | gzip -1 > schemas-$DATA.sql.gz

# Backup de globals
/usr/lib/postgresql/9.5/bin/pg_dumpall -h $SERVIDOR -U $USER -g | gzip -1 > globals-$DATA.sql.gz

# Backup de roles
/usr/lib/postgresql/9.5/bin/pg_dumpall -h $SERVIDOR -U $USER -r | gzip -1 > roles-$DATA.sql.gz

echo "----------------------------------------" | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
echo "== Backup de Dumps finalizado == " | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
echo -e "----------------------------------------\n" | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"

fim_backup_total=$(date -u +"%s");
duracao_tempo_total=$(($fim_backup_total-$inicio_backup_total));

echo "## Bancos com erro   : $BadCount ##" | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
echo "## Bancos com sucesso: $GoodCount ##" | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
echo "## Tempo Total Backup: $(($duracao_tempo_total / 60)) minuto(s) e $(($duracao_tempo_total % 60)) segundo(s). ## " | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"
echo "----------------------------------------" | tee -a $LOG | logger -t "ufba-bkp-postgres.sh"

#Envia o email com o log de backup
mail -s "Backup $DATA-$CLIENTE-$HOST-$AMBIENTE-$SGBD" $EMAIL < $LOG

# Exclui backups mais antigos que 3 dias
/usr/bin/find $BACKUP -name "*.dmp.gz" -type f -mmin +4320 -delete

# Exclui backups mais antigos que 3 dias
/usr/bin/find $BACKUP -name "*.sql.gz" -type f -mmin +4320 -delete
# Exclui log mais antigos que 30 dias
/usr/bin/find /db/log/pg_log/ -name "*.log" -type f -mmin +43200 -delete
