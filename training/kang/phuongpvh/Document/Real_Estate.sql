CREATE DATABASE real_estate;
GO
USE real_estate;
GO

/*==========================================================================================*/

--CREATE TABLE

CREATE TABLE province (
	ID int NOT NULL PRIMARY KEY IDENTITY,
  Name text,
)



CREATE TABLE district (
	ID int NOT NULL PRIMARY KEY IDENTITY,
  Name text,
  Type text,
  ProvinceID int,
)


CREATE TABLE ward (
	ID int NOT NULL PRIMARY KEY IDENTITY,
  Name text,
  Type text,
  DistrictID int,
)

CREATE TABLE real_estate (
	ID int NOT NULL PRIMARY KEY IDENTITY,
  Name text,
  DistrictID int,
)

/*===============================================================================================*/

--CONSTRAINT FOREIGN KEY


ALTER TABLE district
	add constraint fk_Province_id FOREIGN KEY (ProvinceID) REFERENCES province(ID)

ALTER TABLE ward
	add constraint fk_Ward_id FOREIGN KEY (DistrictID) REFERENCES district(ID)


ALTER TABLE real_estate
	add constraint fk_District_id FOREIGN KEY (DistrictID) REFERENCES district(ID)