CREATE TABLE Usuario (
	id_usuario INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR (100) NOT NULL,
    apellidos VARCHAR (100) NOT NULL,
    nombre_usuario VARCHAR (70) NOT NULL UNIQUE,
    telefono VARCHAR (60) NOT NULL,
    correo VARCHAR (100) NOT NULL UNIQUE,
    tipo_usuario VARCHAR (50) NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_usuario)
);
CREATE TABLE Reserva (
	id_reserva INT NOT NULL AUTO_INCREMENT,
    costo_total DECIMAL NOT NULL,
    fecha DATE NOT NULL,
    hora_inicio DATETIME NOT NULL,
    hora_fin DATETIME NOT NULL,
    ubicacion VARCHAR (100) NOT NULL,
    tipo_cancha VARCHAR (80) NOT NULL,
    estado VARCHAR (50),
    id_usuario int not null,
    PRIMARY KEY (id_reserva),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
CREATE TABLE Empresa (
	id_empresa INT NOT NULL AUTO_INCREMENT,
    nombre_empresa VARCHAR(100) NOT NULL,
    nit VARCHAR(50) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    direccion VARCHAR(100) NOT NULL,
    tipo_convenio VARCHAR(80) NOT NULL,
    f_inicio_convenio DATE NOT NULL,
    f_fin_convenio DATE NOT NULL,
    descripcion TEXT NOT NULL,
    PRIMARY KEY (id_empresa)
);
CREATE TABLE convenios (
	id_convenios INT NOT NULL AUTO_INCREMENT,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    id_empresa INT NOT NULL,
    id_usuario INT NOT NULL,
    PRIMARY KEY (id_convenios),
    FOREIGN KEY (id_empresa) REFERENCES Empresa(id_empresa),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
); 
