DROP TABLE estacionbase;
CREATE TABLE estacionbase (
	country 		VARCHAR (20) 			NOT NULL,
	city		 	VARCHAR (20) 			NOT NULL,
	location 		VARCHAR (20) 			,
	temperatura 	int 					NOT NULL,
	humedad 		int 					NOT NULL,
	dir_viento 		int 					NOT NULL,
	vel_viento 		int 					NOT NULL,
	presion 		int 					NOT NULL,
	lluvia 			int 					NOT NULL,
	PRIMARY KEY (city)
);

