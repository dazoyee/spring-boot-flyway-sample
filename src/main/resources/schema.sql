CREATE TABLE IF NOT EXISTS `person`
(
    `id`     BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name`   VARCHAR(100)    NOT NULL COMMENT '名前',
    `age`    INT(3)          NOT NULL COMMENT '年齢',
    `gender` CHAR(1)         NOT NULL COMMENT '年齢' check ( gender = 'M' or gender = 'F' ),
    PRIMARY KEY (`id`)
);
