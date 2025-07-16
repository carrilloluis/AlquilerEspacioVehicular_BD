/*
@description Gestión para el Alquiler de Espacio Vehicular
@author Luis Carrillo Gutiérrez
@date Septiembre, 2016
@version 0.0.2
*/

DROP TABLE IF EXISTS [Vehículo];
CREATE TABLE IF NOT EXISTS [Vehículo]
(
	[id] INTEGER NOT NULL ,
	[placa] VARCHAR(8) NOT NULL,
	[tipo de vehículo] INTEGER NOT NULL DEFAULT 0,
	[observación] TEXT NULL,
	PRIMARY KEY(id)
) WITHOUT RowId;


DROP TABLE IF EXISTS [Cliente];
CREATE TABLE IF NOT EXISTS [Cliente]
(
	[id] INTEGER NOT NULL ,
	[nombres] VARCHAR(64) NOT NULL,
	[apellidos] VARCHAR(64) NOT NULL,
	[documento de identidad] VARCHAR(14) NULL,
	PRIMARY KEY(id)
) WITHOUT RowId;


DROP TABLE IF EXISTS [Lugar de Parqueo];
CREATE TABLE IF NOT EXISTS [Lugar de Parqueo]
(
	[id] INTEGER NOT NULL,
	[referencia x] INTEGER NOT NULL,
	[referencia y] INTEGER NOT NULL,
	[piso] INTEGER NOT NULL,
	PRIMARY KEY(id)
) WITHOUT RowId;


DROP TABLE IF EXISTS [Alquiler de Parqueo];
CREATE TABLE IF NOT EXISTS [Alquiler de Parqueo]
(
	[id] INTEGER NOT NULL,
	[id del vehículo] INTEGER NOT NULL REFERENCES [Vehículo](id),
	[id del cliente] INTEGER NOT NULL REFERENCES [Cliente](id),
	[id del lugar de parqueo] INTEGER NOT NULL REFERENCES [Lugar de Parqueo](id),
	[hora de inicio] CHAR(20) NOT NULL, -- ISO format DATETIME
	[hora de conclusión] CHAR(20) NOT NULL,
	PRIMARY KEY(id)
) WITHOUT RowId;
