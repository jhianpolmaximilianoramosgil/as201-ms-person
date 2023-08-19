-- CREAR DATABASE dbperson
CREATE DATABASE "dbperson"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

-- COMENTAR DATABASE
COMMENT ON DATABASE "dbperson"
    IS 'Person Microservice Database';


-- CREAR TABLA person
CREATE TABLE person (
    id SERIAL PRIMARY KEY NOT NULL,
    id_type VARCHAR(50) NOT NULL,
    id_number VARCHAR(15) NOT NULL,
    name VARCHAR(80) NOT NULL,
    lastname VARCHAR(80) NOT NULL,
    cellphone VARCHAR(9) NOT NULL,
    email VARCHAR(80) NOT NULL,
    active BOOLEAN NOT NULL
);


-- INSERTAR REGISTROS DE person
INSERT INTO person
(id_type,id_number,name,lastname,cellphone,email,active)
VALUES
('DNI','70335061','Juan Gabriel','Condori Jara','940460321','juan@gmail.com',true),
('DNI','71453657','Carlos Daniel','Sanchez Lira','948935456','carlos@gmail.com',true),
('DNI','72674535','Alex Diego','Lira Ramos','958734567','alex@gmail.com',true),
('DNI','72348943','Damian Angel','Lopez Campos','956834231','damian@gmail.com',true),
('DNI','72458943','Josue Brayan','Campos Flores','983478256','josue@gmail.com',true),
('DNI','71893423','Brayan Kevin','Flores Lopez','928435674','brayan@gmail.com',true);


--CONSULTAR REGISTROS DE person
SELECT * FROM person;


