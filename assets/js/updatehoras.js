UPDATE maquinas
SET tiempo_funcionamiento = tiempo_funcionamiento + 1
WHERE CURRENT_TIME >= '07:00:00' AND CURRENT_TIME < '16:00:00';
