mongodump --host "db-mdb-extrator-barramento-01-shard-00-00-iqzmc.mongodb.net:27017,db-mdb-extrator-barramento-01-shard-00-01-iqzmc.mongodb.net:27017,db-mdb-extrator-barramento-01-shard-00-02-iqzmc.mongodb.net:27017" \
          --authenticationDatabase "admin" --gzip --ssl \
          --username "merge" \
          --password "123456@a" \
          --db "trabalhador" \
          --out "/var/lib/backup_felipe_mongo/barramento/20181228/" \

mongodump --host "db-mdb-extrator-barramento-01-shard-00-00-iqzmc.mongodb.net:27017,db-mdb-extrator-barramento-01-shard-00-01-iqzmc.mongodb.net:27017,db-mdb-extrator-barramento-01-shard-00-02-iqzmc.mongodb.net:27017" \
          --authenticationDatabase "admin" --gzip --ssl \
          --username "merge" \
          --password "123456@a" \
          --db "sesi-esb" \
          --out "/var/lib/backup_felipe_mongo/barramento/20181228/" \

mongodump --host "db-mdb-extrator-barramento-01-shard-00-00-iqzmc.mongodb.net:27017,db-mdb-extrator-barramento-01-shard-00-01-iqzmc.mongodb.net:27017,db-mdb-extrator-barramento-01-shard-00-02-iqzmc.mongodb.net:27017" \
          --authenticationDatabase "admin" --gzip --ssl \
          --username "merge" \
          --password "123456@a" \
          --db "ezehr" \
          --out "/var/lib/backup_felipe_mongo/barramento/20181228/" \