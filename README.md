# data-platfrom-masters-and-transactions-mysql-kube
data-platfrom-masters-and-transactions-mysql-kube は、データ連携基盤において、マスタデータ、トランザクションデータを保存するテーブル群を維持管理するMySQLデータベースを、Kubernetes上で立ち上げ稼働させるための マイクロサービス です。    
本リポジトリには、必要なマニフェストファイル等が入っています。  

## 動作環境

* OS: Linux OS  
* CPU: ARM/AMD/Intel  
* Kubernetes  


## data-platfrom-masters-and-transactions-mysql-kube を用いたアーキテクチャ  
data-platfrom-masters-and-transactions-mysql-kube は、下記の黄色い枠の部分のリソースです。  
![mysql_dataplatform](docs/dataplatform-masters-and-transactions_architecture.drawio.png)  
