# data-platfrom-masters-and-transactions-mysql-kube
data-platfrom-masters-and-transactions-mysql-kube は、Kubernetes 上で MariaDB(MySQL) の Pod を立ち上げ稼働させるための マイクロサービス です。    
本リポジトリには、必要なマニフェストファイルが入っています。  
また、本リポジトリには、MySQLの初期設定と、Pod立ち上げ後のテーブルの作成に関する手順が含まれています。  
AIONでは、MySQLは主に、エッジアプリケーションで発生した静的なデータを保持・維持するために用いられます。  

## 動作環境

* OS: Linux OS  

* CPU: ARM/AMD/Intel  

* Kubernetes  


## data-platfrom-masters-and-transactions-mysql-kube を用いたアーキテクチャ  
data-platfrom-masters-and-transactions-mysql-kube は、下記の黄色い枠の部分のリソースです。  
![mysql_dataplatform](docs/dataplatform-masters-and-transactions_architecture.drawio.png)  


