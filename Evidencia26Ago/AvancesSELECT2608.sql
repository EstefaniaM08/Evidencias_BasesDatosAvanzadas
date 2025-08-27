USE clase;
-- SELECT - Consultar datos
-- Recupera todos los datos de la tabla estudiantes
SELECT * FROM estudiante;
-- Muestra solo los nombres y id de la tabla estudiante
SELECT id_estudiante, nombre_est FROM estudiante;
-- Muestra nombre del estudiante con el correo igual a felipe@uni.edu
SELECT nombre_est FROM estudiante WHERE email_est = 'felipe@uni.edu';

SELECT * FROM solicitud_tutoria;
SELECT tema_tutoria FROM solicitud_tutoria WHERE fecha_hora_tutoria = '2024-04-01 10:00:00';

-- Sentencia para borrar columnas
ALTER TABLE sesion 
DROP COLUMN comentarios_seg;
-- Liste los estudiantes por id_semestre de mayor a menor 
SELECT nombre_est, id_semestre FROM estudiante ORDER BY id_semestre DESC;
-- Muestra solo los primeros 5 registros 
SELECT nombre_est, id_estudiante FROM estudiante LIMIT 5;
-- Muestra nombres que comienzan con "A" o "Andres" o apellido como "Ramirez"
SELECT nombre_est FROM estudiante WHERE nombre_est LIKE '%Ramirez%';
SELECT nombre_est FROM estudiante WHERE nombre_est LIKE 'Andres%';
SELECT nombre_est FROM estudiante WHERE nombre_est LIKE 'a%';

-- Agrupar y contar 
SELECT * FROM carrera;
SELECT id_carrera, COUNT(*) AS  total_estudiante FROM estudiante GROUP BY id_carrera;
