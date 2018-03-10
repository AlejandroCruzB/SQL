SELECT Guias_turisticos.Nombre, Guias_turisticos.Apellidos, Guias_turisticos.Idioma, Tours.Destino
FROM Guias_turisticos
INNER JOIN Tours ON Guias_turisticos.Guias_turisticosID=Tours.Guias_turisticosID;

---- WHERE -----

SELECT Guias_turisticos.Nombre, Guias_turisticos.Apellidos, Guias_turisticos.Idioma, Tours.Destino
FROM Guias_turisticos
INNER JOIN Tours ON Guias_turisticos.Guias_turisticosID=Tours.Guias_turisticosID
WHERE Tours.Destino='Málaga';

-----TOTAL----

SELECT COUNT(*)
FROM Tours
INNER JOIN Tours_Turistas ON Tours.ToursID=Tours_Turistas.ToursID
WHERE Tours.Destino='España entera';

----GROUP BY (error en hacer group by, si lo quito sí me salen las 6 filas)----

SELECT Turistas.Nombre, Turistas.Apellidos, Turistas.Idioma, Tours.Destino
FROM Tours
INNER JOIN Turistas ON Turistas.TuristasID=Tours_Turistas.TuristasID
inner join Tours_Turistas on Tours_Turistas.ToursID=Tours.ToursID
GROUP BY Tours.Destino;


	---Datos 4 tablas---
	
select Guias_turisticos.Nombre, Guias_turisticos.Apellidos, Guias_turisticos.Idioma, Tours.Destino, Turistas.Nombre, Turistas.Apellidos, Turistas.Idioma, Turistas.TuristasID AS ID_Turista
from Tours
inner join Guias_turisticos on Guias_turisticos.Guias_turisticosID=Tours.Guias_turisticosID
inner join Tours_Turistas on Tours_Turistas.ToursID=Tours.ToursID
inner join Turistas on turistas.TuristasID=Tours_Turistas.TuristasID
order by ID_Turista ASC;

