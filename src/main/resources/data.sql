-- BORRAR TABLA person SI EXISTE
DROP TABLE IF EXISTS person;


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
    ('DNI','70335061','Juan Gabriel','Condori Jara','940460321','flavio.illanes@vallegrande.edu.pe',true), --student 1
    ('DNI','32343243','Flavio Alonso','Illanes Gonzales','934324434','flavio.illanes@vallegrande.edu.pe',true), --student 2
    ('DNI','23232343','Sebastian Yhonny','Perez Flores','932344332','perezz@gmail.com',true), -- Tesorero
    ('DNI','32343243','Luis Aquilino','Manzo Candela','997887678','luisvg@gmail.com',true), -- Jefe de area
    ('DNI','34344434','Angel Fritz','Alvarado Choque','984323434','elfrits@gmail.com',true), --Secretaria
    ('DNI','32343243','Ivan','Pajares','994934943','jose.guerrero@vallegrande.edu.pe',true), -- Ivan pajares
    ('DNI','71453657','Carlos Daniel','Sanchez Lira','948935456','carlos@gmail.com',true), -- Jefe Minedu
    ('DNI','10987654','Fernando Gerardo','Quillas Fernandes','909876543','gerard@gmail.com',true), --student 3
    ('DNI','21098765','Mike Harry','Valdes Campos','921098765','mike342@gmail.com',true), --student 4
    ('DNI','32109876','Alberto Carlos','Ramirez Lara','912345678','albert@gmail.com',true), --student 5
    ('DNI','56789012','Marco Antonio','Solis Laurel','987654321','laurel2@gmail.com',true), --student 6
    ('DNI','10987654','Jhonn Luis','Berrocal Sotomayor','934567890','jhonncito@gmail.com',true), --student 7
    ('DNI','45678901','Maximo Renato','Huaman Sorento','909876543','huamancito@gmail.com',true), --student 8 - utilzo hasta aca
    ('DNI','98765432','Paul Edison','Mendoza Garcia','956789012','delmende@gmail.com',true), --student 9
    ('DNI','23456789','Edson Enrique','Quispe Chorrillos','949588854','chorri123@gmail.com',true), --student 10
    ('DNI','76464674','Alfredo Lucio','Gonzales Orteaga','934342424','deortega@gmail.com',true), --student 11
    ('DNI','73425354','Dayana Emily','Palomino Cantoral','956666573','dayanapalomino@gmail.com',true), --student 12
    ('DNI','53960343','Jhianpol Maximiliano','Ramos Gil','934935323','jhianpol12323@gmail.com',true), --student 13
    ('DNI','73249010','Jose Crispin','Aricochea Rios','949222062','jose.aricochea@vallegrande.edu.pe',true); --Role Admin
