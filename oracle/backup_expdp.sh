#!/bin/bash
RUNTIME=`date '+%H%M_%d%m%Y'`
RUNDATE=`date '+%d%m%Y'`

export ORACLE_SID=orcl
export ORACLE_HOME=/u01/app/oracle/product/12.2.0/dbhome_1
export PATH=$PATH:${ORACLE_HOME}/bin
$ORACLE_HOME/bin/expdp \"/ as sysdba\"  FULL=YES  DUMPFILE=bkp_$RUNTIME.dmp DIRECTORY=BACKUP FLASHBACK_TIME=SYSTIMESTAMP LOGFILE=bkp_$RUNTIME.log

gzip /u01/backup/full/bkp_$RUNTIME.dmp
mail -s "Backup" dalton_oliveira@hotmail.com <<< "Backup Realizado com sucesso. "$RUNDATE
