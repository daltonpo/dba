MASTER

CREATE USER 'slave'@'localhost' IDENTIFIED BY '123456';

GRANT REPLICATION SLAVE ON *.* TO slave IDENTIFIED BY '123456' WITH GRANT OPTION;

FLUSH PRIVILEGES;

FLUSH TABLES WITH READ LOCK;

SHOW MASTER STATUS;

UNLOCK TABLES;


SLAVE

GRANT ALL PRIVILEGES ON employees.* TO 'slave'@'localhost' WITH GRANT OPTION;

CREATE USER 'slave'@'localhost' IDENTIFIED BY '123456';

GRANT ALL PRIVILEGES ON employees.* TO 'slave'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

CHANGE MASTER TO MASTER_HOST='172.29.0.231', MASTER_USER='slave', MASTER_PASSWORD='123', MASTER_PORT=3306, MASTER_LOG_FILE='master-bin.000001', MASTER_LOG_POS=816, MASTER_CONNECT_RETRY=10, MASTER_USE_GTID=current_pos;

START SLAVE;

SHOW SLAVE STATUS\G;