SELECT Guias_turisticos.Nombre, Guias_turisticos.Apellidos, Guias_turisticos.Idioma, Tours.Destino
FROM Guias_turisticos
INNER JOIN Tours ON Guias_turisticos.Guias_turisticosID=Tours.Guias_turisticosID;

---- WHERE -----

SELECT Guias_turisticos.Nombre, Guias_turisticos.Apellidos, Guias_turisticos.Idioma, Tours.Destino
FROM Guias_turisticos
INNER JOIN Tours ON Guias_turisticos.Guias_turisticosID=Tours.Guias_turisticosID
WHERE Tours.Destino='Málaga';

-----TOTAL----

SELECT COUNT(Tours.Destino)
FROM Guias_turisticos
INNER JOIN Tours ON Guias_turisticos.Guias_turisticosID=Tours.Guias_turisticosID
WHERE Tours.Destino='España';

----GROUP BY----

SELECT Turistas.Nombre, Turistas.Apellidos, Turistas.Idioma, Tours.Destino
FROM Tours
INNER JOIN Turistas ON Tours.ToursID=Turistas.ToursID
GROUP BY Tours.Destino;


	---Datos 3 tablas---
	
select Guias_turisticos.Nombre, Guias_turisticos.Apellidos, Guias_turisticos.Idioma, Tours.Destino, Turistas.Nombre, Turistas.Apellidos, Turistas.Idioma, Turistas.TuristasID AS ID
from Turistas
inner join Guias_turisticos on Guias_turisticos.Guias_turisticosID=Tours.Guias_turisticosID
inner join Tours on Tours.ToursID=Turistas.ToursID
order by ID ASC;

