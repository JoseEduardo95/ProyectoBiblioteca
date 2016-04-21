CREATE TABLE contacto (
  idcontacto INT NOT NULL AUTO_INCREMENT,
  proveedor_idProveedor INT NOT NULL,
  nombre VARCHAR(255) NULL,
  email VARCHAR(255) NULL,
  telefono NUMERIC NULL,
  estado VARCHAR(20) NULL,
  PRIMARY KEY(idcontacto),
  INDEX contacto_FKIndex1(proveedor_idProveedor)
);

CREATE TABLE material (
  idFolio INT NOT NULL AUTO_INCREMENT,
  prestamo_idprestamo INT NOT NULL,
  tipoMaterial_idTipoMaterial INT NOT NULL,
  editorial VARCHAR(255) NULL,
  fechaPublicacion DATE NULL,
  estado VARCHAR(20) NULL,
  titulo VARCHAR(255) NULL,
  precio FLOAT NULL,
  PRIMARY KEY(idFolio),
  INDEX Material_FKIndex1(tipoMaterial_idTipoMaterial),
  INDEX material_FKIndex2(prestamo_idprestamo)
);

CREATE TABLE multa (
  usuario_idusuario VARCHAR(20) NOT NULL,
  idMulta INT NOT NULL AUTO_INCREMENT,
  cantidad FLOAT NULL,
  estado VARCHAR(20) NULL,
  INDEX multa_FKIndex1(usuario_idusuario)
);

CREATE TABLE prestamo (
  idprestamo INT NOT NULL AUTO_INCREMENT,
  usuario_idusuario VARCHAR(20) NOT NULL,
  fechaDevolucion DATE NULL,
  fechaPrestamo DATE NULL,
  fechaEntrega DATE NULL,
  PRIMARY KEY(idprestamo),
  INDEX prestamo_FKIndex1(usuario_idusuario)
);

CREATE TABLE proveedor (
  idProveedor INT NOT NULL AUTO_INCREMENT,
  razonSocial VARCHAR(45) NULL,
  rfc VARCHAR(45) NULL,
  fechaIngreso DATE NULL,
  direccion VARCHAR(255) NULL,
  nombreEmpresa VARCHAR(255) NULL,
  emailEmpresa VARCHAR(255) NULL,
  PRIMARY KEY(idProveedor)
);

CREATE TABLE tipoMaterial (
  idTipoMaterial INT NOT NULL AUTO_INCREMENT,
  tipoMaterial VARCHAR(20) NULL,
  PRIMARY KEY(idTipoMaterial)
);

CREATE TABLE tipoUsuario (
  idTipoUsuario INT NOT NULL AUTO_INCREMENT,
  ripoUsuario VARCHAR(45) NULL,
  PRIMARY KEY(idTipoUsuario)
);

CREATE TABLE usuario (
  idusuario VARCHAR(20) NOT NULL,
  tipoUsuario_idTipoUsuario INT NOT NULL,
  nombre VARCHAR(255) NULL,
  direccion VARCHAR(255) NULL,
  email VARCHAR(255) NULL,
  telefono INT NULL,
  contrasena VARCHAR(20) NULL,
  PRIMARY KEY(idusuario),
  INDEX usuario_FKIndex1(tipoUsuario_idTipoUsuario)
);


