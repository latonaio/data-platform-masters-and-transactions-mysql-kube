CREATE TABLE `data_platform_plant_general_data`
(
  `BusinessPartner`                 varchar(10) NOT NULL,
  `Plant`                           varchar(4) NOT NULL,
  `PlantFullName`                   varchar(80) DEFAULT NULL,
  `PlantName`                       varchar(80) DEFAULT NULL,
  `CorrespondenceLanguage`          varchar(2) DEFAULT NULL,
  `CreationDate`                    varchar(80) DEFAULT NULL,
  `CreationTime`                    varchar(80) DEFAULT NULL,
  `Division`                        varchar(2) DEFAULT NULL,
  `LastChangeDate`                  varchar(80) DEFAULT NULL,
  `LastChangeTime`                  varchar(80) DEFAULT NULL,
  `PlantFoundationDate`             varchar(80) DEFAULT NULL,
  `PlantLiquidationDate`            varchar(80) DEFAULT NULL,
  `SearchTerm1`                     varchar(20) DEFAULT NULL,
  `SearchTerm2`                     varchar(20) DEFAULT NULL,
  `PlantDeathDate`                  varchar(80) DEFAULT NULL,
  `PlantIsBlocked`                  tinyint(1) DEFAULT NULL,
  `GroupPlantName1`                 varchar(40) DEFAULT NULL,
  `GroupPlantName2`                 varchar(40) DEFAULT NULL,
  `AddressID`                       varchar(10) DEFAULT NULL,
  `Country`                         varchar(3) DEFAULT NULL,
  `IsMarkedForArchiving`            tinyint(1) DEFAULT NULL,
  `PlantIDByExtSystem`              varchar(20) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `Plant`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
