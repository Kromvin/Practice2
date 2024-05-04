-- Создание таблицы users
CREATE TABLE users (
    id SERIAL PRIMARY KEY, 
    login VARCHAR(50),
    password VARCHAR(50),
    role VARCHAR(50)
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    groupа VARCHAR(50),
    curs INT,
    secondname VARCHAR(50),
    name VARCHAR(50),
    fathername VARCHAR(50),
    napravlen VARCHAR(50),
    otsenka INT,
    zamech VARCHAR(50),
    kachestv VARCHAR(50),
    indzad VARCHAR(50),
    slojnosti VARCHAR(50),
    id_user INT REFERENCES users(id)
);
CREATE TABLE zadacha(
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(id),
    zadacha VARCHAR(100)
);

CREATE TABLE admin (
    id SERIAL PRIMARY KEY,
    
    id_user INT REFERENCES users(id)
);

CREATE TABLE practicmng (
    id SERIAL PRIMARY KEY,
    dolgnost VARCHAR(50),
    secondname VARCHAR(50),
    name VARCHAR(50),
    fathername VARCHAR(50),
    adressProv VARCHAR(50),
    gorodProv VARCHAR (50),
    id_user INT REFERENCES users(id)
);
CREATE TABLE doc(
        id SERIAL PRIMARY KEY,
        name VARCHAR(50),
        id_practicmng INT REFERENCES practicmng(id),
        mestopract VARCHAR(100),
        vidpract VARCHAR(100),
        typePract varchar(100),
        institut VARCHAR(100),
        dateStart varchar(50),
        dateFinish varchar(50),
        god INT
);
CREATE TABLE studentdoc(
    id SERIAL PRIMARY KEY,
    namedoc VARCHAR(50),
    id_student INT REFERENCES students(id),
    mestopract VARCHAR(100),
    vidpract VARCHAR(100),
    typePract varchar(100),
    institut VARCHAR(100),
    dateStart varchar(50),
    dateFinish varchar(50),
    god INT,
    groupа VARCHAR(50),
    curs INT,
    secondname VARCHAR(50),
    name VARCHAR(50),
    fathername VARCHAR(50),
    napravlen VARCHAR(50),
    otsenka VARCHAR(50),
    gorodProv VARCHAR (50),
    zamech VARCHAR(50),
    kachestv VARCHAR(50),
    indzad VARCHAR(50),
    slojnosti VARCHAR(50),
    zadachi VARCHAR(255)
)
