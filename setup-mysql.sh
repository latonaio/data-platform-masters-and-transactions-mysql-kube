#!/bin/bash
DB_USER_NAME="root" # DBのユーザー名を指定
DB_USER_PASSWORD="root" # DBのパスワードを指定
POD_NAME="data-platform-masters-and-transactions-mysql-kube" # Podの名前を指定
DATABASE_NAME="DataPlatformPlantMySQLKube" # データベース名を指定
# SQL_NAME="data_platform_plant_sql_general_data.sql" # sqlファイルの名前を指定
SQL_FILES=( # sqlファイルの名前を複数指定
  "data_platform_plant_sql_general_data.sql"
  "data_platform_plant_sql_address_data.sql"
  )
MYSQL_POD=$(kubectl get pod | grep ${POD_NAME} | awk '{print $1}')

kubectl exec -it ${MYSQL_POD} -- bash -c "mysql -u${DB_USER_NAME} -p${DB_USER_PASSWORD} -e \"CREATE DATABASE IF NOT EXISTS ${DATABASE_NAME} default character set utf8 ;\""

# kubectl exec -it ${MYSQL_POD} -- bash -c "mysql -u${DB_USER_NAME} -p${DB_USER_PASSWORD} -D ${DATABASE_NAME} < /src/${SQL_NAME}"

for ((i=0; i<${#SQL_FILES[@]}; i++)) do
  kubectl exec -it ${MYSQL_POD} -- bash -c "mysql -u${DB_USER_NAME} -p${DB_USER_PASSWORD} -D ${DATABASE_NAME} < /src/${SQL_FILES[i]}"
done