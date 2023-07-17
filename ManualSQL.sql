/* La sentencia para crear una base de datos */
CREATE DATABASE  nombre_de_la_tabla_de_datos;

/*Necesitaremos la base de datos mundo*/
CREATE DATABASE IF NOT EXISTS mundo;

/*Borramos la base de datos*/
DROP DATABASE nombre_de_la_tabla_de_datos;

/* Se borra tambien asi */
DROP DATABASE IF EXISTS nombre_de_la_tabla_de_datos

/* Creamos la base de datos */
CREATE TABLE nombre_de_la_tabla(
    columna tipo_de_dato1,
    columna tipo_de_dato2,
    columna tipo_de_dato3,
    ...
);

/* O asi tambien */
CREATE TABLE IF NOT EXISTS nombre_de_la_tabla(
    columna tipo_de_dato1,
    columna tipo_de_dato2,
    columna tipo_de_dato3,
    ...
);

/* Ahora crearemos la tabla llamada pais  */

USE mundo; /* La sentencia Use indica la base de datos que se va a usar */

CREATE TABLE IF NOT EXISTS pais(
    id int,
    nombre Varchar(20),
    continente Varchar(50),
    poblacion int
);

/* Existen varios tipos de Datos */

INT	Número entero
VARCHAR(size)	Cadena de texto de longitud variable, especificada por "size"
CHAR(size)	Cadena de texto de longitud fija, especificada por "size"
TEXT	Texto de longitud variable
DATE	Fecha (formato: 'YYYY-MM-DD')
TIME	Hora (formato: 'HH:MM:SS')
DATETIME	Fecha y hora (formato: 'YYYY-MM-DD HH:MM:SS')
FLOAT	Número decimal de precisión simple
DOUBLE	Número decimal de precisión doble
DECIMAL(p, s)	Número decimal con precisión y escala específicas
BOOLEAN	Valor booleano (0 o 1)
ENUM(val1, val2)	Enumeración de valores específicos
SET(val1, val2)	Conjunto de valores específicos
BLOB	Datos binarios largos


/* Se borran las tablas usando */
DROP TABLE nombre_de_la_tabla;

/* Ahora creamos y borramos la tabla "Temp" */

CREATE TABLE Temp(
    id integer,
    dato VARCHAR(20)
);

Drop Table Temp;

/* Creación de llaves primarias en tablas */
CREATE TABLE nombre_de_la_tabla(
    columna tipo_de_dato1 PRIMARY KEY,
    columna tipo_de_dato2,
    columna tipo_de_dato3,
    ..
);

/* así qudaria en nuestra tabla */
CREATE TABLE IF NOT EXISTS pais (
    id int PRIMARY KEY,
    nombre varchar(20),
    continente varchar(50),
    población int
);

/* Se define la llave primaria */
ALTER TABLE nombre_de_la_tabla /* Nos permite poder cambiar la estructura de una tabla */
ADD PRIMARY KEY (columna1); /* Coge la llave primaria */
