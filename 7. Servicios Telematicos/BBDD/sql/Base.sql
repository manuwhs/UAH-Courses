


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


  	
