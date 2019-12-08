------------------------------------------------------------ CREAR DB ------------------------------------------------------------
CREATE DATABASE db_spmFasttasty
GO
------------------------------------------------------------ ACTIVAR DB ------------------------------------------------------------
USE db_spmFasttasty
GO
------------------------------------------------------------ CREAR TABLAS ------------------------------------------------------------
/*************************** TABLA USUARIO ***************************/
if (not exists(Select 1 from sys.tables 
where name = 'spmUSUtUsuario'))
	CREATE TABLE dbo.spmUSUtUsuario(
		USUid int identity(1,1) NOT NULL,
		USUnombre varchar(250) NOT NULL,
		USUapellido varchar(250) NOT NULL,
		USUnombre_usuario varchar(250) NOT NULL,
		USUcorreo_electronico varchar(250) NOT NULL,
		USUcontraseña varchar(250) NOT NULL,
		USUfoto varchar(250) NOT NULL,
		PRIMARY KEY (USUid)
   )
GO
/*************************** TABLA RECOMENDACION SALUD ***************************/
if (not exists(Select 1 from sys.tables 
where name = 'spmPADtPadecimiento_Salud'))
	CREATE TABLE dbo.spmPADtPadecimiento_Salud(
	PADid int identity(1,1) NOT NULL,
	PADnombre varchar(250) NOT NULL,
	PADdescripcion varchar(250) NOT NULL
	PRIMARY KEY (PADid)
	)
GO
/*************************** TABLA INGREDIENTE ***************************/
if (not exists(Select 1 from sys.tables 
where name = 'spmINGtIngrediente'))
	CREATE TABLE dbo.spmINGtIngrediente(
	INGid int identity(1,1) NOT NULL,
	INGnombre varchar(250) NOT NULL,
	INGunidad_medida varchar(250) NOT NULL,
	INGfoto varchar(250) NOT NULL
	PRIMARY KEY (INGid)
	)
GO
/*************************** TABLA RECETA ***************************/
if (not exists(Select 1 from sys.tables 
where name = 'spmRECpReceta'))
	CREATE TABLE dbo.spmRECpReceta(
		RECid int identity(1,1) NOT NULL,
		RECnombre varchar(250) NOT NULL,
		RECtipo_plato varchar(250) NOT NULL,
		RECtiempo_preparacion int NOT NULL, --minutos
		RECprocedimiento_preparacion varchar(1500) NOT NULL,
		RECfoto varchar(250) NOT NULL,
		USUid int NOT NULL,
		PADid int NOT NULL
		PRIMARY KEY (RECid),
		FOREIGN KEY (USUid) REFERENCES spmUSUtUsuario,
		FOREIGN KEY (PADid) REFERENCES spmPADtPadecimiento_Salud
   )
GO
/*************************** TABLA RECETA INGREDIENTE ***************************/
if (not exists(Select 1 from sys.tables 
where name = 'spmRINpReceta_Ingrediente'))
	CREATE TABLE dbo.spmRINpReceta_Ingrediente(
	RINid int identity(1,1) NOT NULL,
	RECid int NOT NULL,
	INGid int NOT NULL,
	RINcantidad_ingrediente int NOT NULL
	PRIMARY KEY (RINid),
	FOREIGN KEY (RECid) REFERENCES spmRECpReceta,
	FOREIGN KEY (INGid) REFERENCES spmINGtIngrediente
	)
GO
/*************************** TABLA PLANIFICADOR ***************************/
if (not exists(Select 1 from sys.tables 
where name = 'spmPLApPlanificacion'))
	CREATE TABLE dbo.spmPLApPlanificacion(
	PLAid int identity(1,1) NOT NULL,
	PLAfecha datetime NOT NULL,
	PLAporciones int NOT NULL,
	RECid int NOT NULL,
    USUid int NOT NULL
	PRIMARY KEY (PLAid),
	FOREIGN KEY (RECid) REFERENCES spmRECpReceta,
	FOREIGN KEY (USUid) REFERENCES spmUSUtUsuario
	)
GO
/*************************** TABLA VALORACION ***************************/
if (not exists(Select 1 from sys.tables 
where name = 'spmVALtValoracion'))
	CREATE TABLE dbo.spmVALtValoracion(
	VALid int identity(1,1) NOT NULL,
	VALnumero_estrellas int NOT NULL,
	VALcomentario varchar(350) NOT NULL,
	VALfecha datetime NOT NULL,
	RECid int NOT NULL,
	USUid int NOT NULL
	PRIMARY KEY (VALid),
	FOREIGN KEY (RECid) REFERENCES spmRECpReceta,
	FOREIGN KEY (USUid) REFERENCES spmUSUtUsuario
	)
GO
