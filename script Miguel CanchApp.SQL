
-- TABLA: tipo_pago
CREATE TABLE tipo_pago (
    id_tipo_pago INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255),
    CHECK (CHAR_LENGTH(nombre) >= 3),
    PRIMARY KEY (id_tipo_pago)
);


-- TABLA: tipo_persona
CREATE TABLE tipo_persona (
    id_tipo_persona INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255),
    CHECK (CHAR_LENGTH(nombre) >= 3),
    PRIMARY KEY (id_tipo_persona)
);

-- TABLA: persona
CREATE TABLE persona (
    id_persona INT NOT NULL AUTO_INCREMENT,
    id_tipo_persona INT NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    documento VARCHAR(20) NOT NULL UNIQUE,
    correo VARCHAR(100) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    fecha_registro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CHECK (CHAR_LENGTH(nombres) >= 2),
    CHECK (CHAR_LENGTH(apellidos) >= 2),

    PRIMARY KEY (id_persona),

    FOREIGN KEY (id_tipo_persona) REFERENCES tipo_persona(id_tipo_persona)
);

-- TABLA: noticias
CREATE TABLE noticias (
    id_noticia INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    contenido TEXT NOT NULL,
    fecha_publicacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_persona INT NOT NULL,

    CHECK (CHAR_LENGTH(titulo) >= 5),

    PRIMARY KEY (id_noticia),

    FOREIGN KEY (id_persona) REFERENCES persona(id_persona)
);
