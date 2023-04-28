CREATE SCHEMA `gruppa_analitics` ;
CREATE TABLE `gruppa_analitics`.`my_group` (
  `idMy_group` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idMy_group`));

  ALTER TABLE `gruppa_analitics`.`my_group` 
ADD COLUMN `name` VARCHAR(128) NOT NULL AFTER `idMy_group`,
ADD COLUMN `age` INT NOT NULL AFTER `name`,
ADD COLUMN `adress` VARCHAR(128) NOT NULL AFTER `age`;

INSERT INTO `gruppa_analitics`.`my_group` (`idMy_group`, `name`, `age`, `adress`) VALUES ('1', 'Иванова Анастасия', '32', 'Москва');
INSERT INTO `gruppa_analitics`.`my_group` (`name`, `age`, `adress`) VALUES ('Петров Григорий', '25', 'Санкт-Петербург');
INSERT INTO `gruppa_analitics`.`my_group` (`name`, `age`, `adress`) VALUES ('Сидорова Марина', '45', 'Можга');
INSERT INTO `gruppa_analitics`.`my_group` (name, age, adress) VALUES ('Kегунков Евгений', '38', 'Нижний Новгород');
SELECT name FROM gruppa_analitics.my_group WHERE adress = 'Москва' and age < 60 and age >= 18;
