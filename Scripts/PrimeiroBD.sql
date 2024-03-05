USE `BD2401`;
-- Criando o Schema do BD
create schema `BD2401`;

-- Excluindo o BD
drop database `BD2401`;

-- Criando a tabela
create table `BD2401`.`NEW_TABLE`(
	`ID_MEMBER` INT NOT NULL AUTO_INCREMENT,
	`FIRST_NAME` VARCHAR(20) NOT NULL,
    `ACTIVE` BIT(1) NULL DEFAULT 1,
    `WHEN_ADDED` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    `LAST_MODIFIED` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`ID_MEMBER`)
);

-- inserindo dados na tabela
insert into `BD2401`.`NEW_TABLE` (`FIRST_NAME`)
values('Lana');

insert into `BD2401`.`NEW_TABLE` (`FIRST_NAME`, `ACTIVE`)
values('Jake', 0);

insert into `BD2401`.`NEW_TABLE` (`FIRST_NAME`, `ACTIVE`)
values('Niki', 0);

-- exibindo / consultando dados
select * from `BD2401`.`NEW_TABLE`;