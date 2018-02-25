DROP TABLE parametro;
DROP TABLE capturaValor;
DROP TABLE categoriaEquipo;
DROP TABLE capturaImagen ;
DROP TABLE sensor;
DROP TABLE concentrador;
DROP TABLE alarma;





CREATE TABLE parametro (
	id 				int 			NOT NULL,
	categoriaEqId 	int 			NOT NULL,
	nombre 			VARCHAR (20) 	NOT NULL,
	descripcion		VARCHAR (20) 	NOT NULL,
	periocidad 		int 			NOT NULL,
	unidades 		int 			NOT NULL,
	umbralUp1 		int 			,
	umbralUp2 		int 			,
	umbralUp3 		int 			,
	umbralUp4 		int 			,
	umbralDown1 	int 			,
	umbralDown2 	int 			,
	umbralDown3 	int 			,
	umbralDown4 	int 			,
	PRIMARY KEY (id),
	FOREIGN KEY (categoriaEqId) 
    	REFERENCES categoriaEquipo(id) 
    	
    	/* Los valores de categoriaEqId se ven restringidos
    	por la lista externa categoriaEquipo.Id */
);

CREATE TABLE capturaValor (
	id 				int 			NOT NULL,
	valor 			int,
	sensorId 		int 			NOT NULL,
	fecha			VARCHAR (20) 	NOT NULL,
	parametroId 	int 			NOT NULL,
		
	PRIMARY KEY (id),
	FOREIGN KEY (sensorId) 
    	REFERENCES sensor(id), 
    	
 	FOREIGN KEY (parametroId) 
    	REFERENCES parametro(id) 
);

CREATE TABLE categoriaEquipo (
	id 				int 			NOT NULL,
	nombre 			VARCHAR (20) 	NOT NULL,
	descripcion		VARCHAR (20) 	NOT NULL,
	PRIMARY KEY (id)
);
	
	
	
CREATE TABLE capturaImagen (
	id 				int 			NOT NULL,
	imagen 			VARCHAR (20) 	NOT NULL,
	tamanoX 		int 			,
	tamanoY 		int 			,
	resolucion 		int 			,
	fecha			VARCHAR (20) 	NOT NULL,
	sensorId 		int 			,	
	parametroId 	int 			,
	PRIMARY KEY (id),
	FOREIGN KEY (parametroId) 
    	REFERENCES parametro(id) 
);

CREATE TABLE sensor (
	id 				int 			NOT NULL,
	nombre 			VARCHAR (20) 	NOT NULL,
	descripcion		VARCHAR (20) 	NOT NULL,
	
	clave_externa 	int 			NOT NULL,
	gisLatitud	 	int 			NOT NULL,
	gisLongitud	 	int 			NOT NULL,
	num 			int 			NOT NULL,
	macAddress	 	int 			NOT NULL,
	numeroSerie	 	int 			NOT NULL,
	
	concentradorId	int 			NOT NULL,
	categoriaEqId 	int 			NOT NULL,		
	PRIMARY KEY (id),
	FOREIGN KEY (concentradorId) 
    	REFERENCES concentrador(id), 
    	
 	FOREIGN KEY (categoriaEqId) 
    	REFERENCES categoriaEquipo(id) 
);

CREATE TABLE concentrador (
	id 				int 			NOT NULL,
	nombre 			VARCHAR (20) 	NOT NULL,
	descripcion		VARCHAR (20) 	NOT NULL,
	
	clave_externa 	int 			NOT NULL,
	gisLatitud	 	int 			NOT NULL,
	gisLongitud	 	int 			NOT NULL,
	macAddress	 	int 			NOT NULL,
	numeroSerie	 	int 			NOT NULL,
	categoriaEqId 	int 			NOT NULL,
	macAddress2	 	int 			NOT NULL,
	ipAddress	 	int 			NOT NULL,
	ipPort		 	int 			NOT NULL,
	accessURL	 	int 			NOT NULL,	
			
	PRIMARY KEY (id),

 	FOREIGN KEY (categoriaEqId) 
    	REFERENCES categoriaEquipo(id) 
);

CREATE TABLE alarma (
	id 				int 			NOT NULL,
	sensorId 		int 			NOT NULL,
	criticidad 		int 			NOT NULL,
	tipo 			VARCHAR (20) 	NOT NULL,
	texto 			VARCHAR (20) 	NOT NULL,
	estado 			VARCHAR (20) 	NOT NULL,
	fechaActivacion 	VARCHAR (20) 	NOT NULL,
	fechaAck 			VARCHAR (20) 	NOT NULL,
	fechaCese 			VARCHAR (20) 	NOT NULL,
	tipoCese 			VARCHAR (20) 	NOT NULL,			
	PRIMARY KEY (id),

 	FOREIGN KEY (sensorId) 
    	REFERENCES sensor(id) 
);


  	




INSERT INTO parametro VALUES (1,3,'hamster','f',5,1, 100,100,100,100,50,50,50,50);
INSERT INTO parametro VALUES (2,2,'rata','fa',12,10, 10,10,10,10,5,5,5,5);
INSERT INTO parametro VALUES (3,1,'leopardo','faa',32,32, 120,120,120,120,20,20,20,20);
INSERT INTO parametro VALUES (5,2,'sierra','faaa',43,12, 300,300,300,300,50,50,50,50);
INSERT INTO parametro VALUES (4,4,'leua','faaa',54,13, 145,100,14,105,50,20,10,50);

INSERT INTO capturaValor VALUES (2,12,1,'10/10/2010',2);
INSERT INTO capturaValor VALUES (1,12,3,'11/11/2010',3);
INSERT INTO capturaValor VALUES (4,12,2,'12/5/2010',4);
INSERT INTO capturaValor VALUES (3,12,4,'13/6/2010',1);

INSERT INTO categoriaEquipo VALUES (1,'Real Madrid','Mercenarios');
INSERT INTO categoriaEquipo VALUES (2,'Barsa','Independentistas');
INSERT INTO categoriaEquipo VALUES (3,'Sevilla','Gitanos');
INSERT INTO categoriaEquipo VALUES (4,'Flechas negras','Badajoz');

INSERT INTO capturaImagen VALUES (1,'Algo.jpg',320,240,5,'20/6/2010',1,2);
INSERT INTO capturaImagen VALUES (2,'Algo4.jpg',320,240,5,'13/6/2001',3,4);
INSERT INTO capturaImagen VALUES (3,'Algo6.jpg',320,240,5,'12/1/2007',4,1);
INSERT INTO capturaImagen VALUES (4,'Algo2.jpg',320,240,5,'4/6/2010',2,3);

INSERT INTO sensor VALUES (1,'Temperatura','Grados',2450,123,1233,35,121235,143,1,2);
INSERT INTO sensor VALUES (2,'Luz','Luxes',24075,123,1233,3,121235,3143,2,1);
INSERT INTO sensor VALUES (3,'Presion','Atmosferas',24560,123,1233,1,121235,4143,3,4);
INSERT INTO sensor VALUES (4,'Viento','km/h',247560,123,1233,70,121235,2143,4,3);

INSERT INTO concentrador VALUES (4,'T','Grados',2450,123,1233,5,121235,3,143,1,2,5);
INSERT INTO concentrador VALUES (1,'L','Luxes',24075,123,1233,3,121235,4,3143,2,1,2);
INSERT INTO concentrador VALUES (2,'P','Atmosferas',24560,123,1233,1,121235,2,4143,3,4,1);
INSERT INTO concentrador VALUES (3,'V','km/h',247560,123,1233,12,121235,2,2143,4,3,6);

INSERT INTO alarma VALUES (4,1,32,'Uno','Hola','Activo','10/12/2014','10/12/2014','10/12/2014','Siempre');
INSERT INTO alarma VALUES (1,3,43,'Dos','Adios','No activo','10/12/2014','10/12/2014','10/12/2014','Siempre');
INSERT INTO alarma VALUES (2,4,65,'Tres','Hola','Roto','10/12/2014','10/12/2014','10/12/2014','Siempre');
INSERT INTO alarma VALUES (3,2,76,'Uno','Hola','Activo','10/12/2014','10/12/2014','10/12/2014','Siempre');


  	  	
  	
