ALTER TABLE `person`
    ADD `age`    INT(3)  NOT NULL COMMENT '年齢',
    ADD `gender` CHAR(1) NOT NULL COMMENT '年齢' check ( gender = 'M' or gender = 'F' )
;
