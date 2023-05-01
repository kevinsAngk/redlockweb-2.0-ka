CREATE DATABASE redlock;

USE redlock;

CREATE TABLE users (
    ID INT NOT NULL AUTO_INCREMENT,
    Nama VARCHAR(50) NOT NULL,
    Alamat VARCHAR(100) NOT NULL,
    Jabatan VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO users (Nama, Alamat, Jabatan) VALUES
    ('John Doe', 'Jl. Sudirman No. 123', 'Manager'),
    ('Jane Smith', 'Jl. Thamrin No. 456', 'Supervisor'),
    ('Bob Johnson', 'Jl. Gatot Subroto No. 789', 'Staff');
