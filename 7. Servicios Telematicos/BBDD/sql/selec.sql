SELECT id, umbralUp1, umbralDown1
	FROM parametro;
	
SELECT id, nombre
	FROM sensor;
	
SELECT id, sensorId, criticidad
	FROM alarma;
	

SELECT capturaImagen.id, imagen, capturaImagen.fecha, capturaImagen.parametroId, umbralUp1, umbralDown1, capturaImagen.sensorId, sensor.nombre, sensor.num, alarma.criticidad 
	FROM capturaImagen, parametro, sensor, alarma
		WHERE (capturaImagen.parametroId = parametro.id) AND (capturaImagen.sensorId = sensor.id)
			AND (alarma.sensorId = sensor.Id);

SELECT capturaImagen.id, imagen, capturaImagen.fecha , umbralUp1, umbralDown1, sensor.nombre
	FROM capturaImagen, parametro, sensor, alarma 
		WHERE (parametroId = parametro.id) AND (capturaImagen.sensorId = sensor.id)
			AND (alarma.sensorId = sensor.Id) AND (alarma.criticidad < sensor.num);



