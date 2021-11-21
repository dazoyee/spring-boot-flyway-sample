ALTER TABLE `person`
    ADD `age` INT(3) COMMENT '年齢'
;

ALTER TABLE `person`
    ADD `gender` CHAR(1) COMMENT '性別' check ( gender = 'M' or gender = 'F' )
;

UPDATE `person`
SET `age`    = 27,
    `gender` = 'M'
WHERE `name` = 'ioridazo'
;

ALTER TABLE `person`
    MODIFY `age` INT (3) NOT NULL COMMENT '年齢'
;

ALTER TABLE `person`
    MODIFY `gender` CHAR (1) NOT NULL COMMENT '性別' check ( gender = 'M' or gender = 'F' )
;
