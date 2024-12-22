CREATE USER 'qc_user'@'%' IDENTIFIED BY 'password';

CREATE DATABASE quality_control;

GRANT ALL PRIVILEGES ON quality_control.*  TO 'qc_user'@'%';

FLUSH PRIVILEGES;