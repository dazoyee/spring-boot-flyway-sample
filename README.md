# spring-boot-flyway-sample
1. データベースの追加
   ```
    create database flyway_sample;
    ```
2. ユーザーの追加
    ```
    create user `flyway`@`localhost` IDENTIFIED BY 'flyway';
    grant all privileges on flyway_sample.* to flyway@localhost IDENTIFIED BY 'flyway';
    ```
