select Alojamiento.Nombre_alojamiento, Cliente.Nombre_cliente, Casa_Cliente.Fecha_alojamiento
from Alojamiento
inner join Casa_Cliente on Casa_Cliente.AlojamientoID=Alojamiento.AlojamientoID
inner join Cliente on Cliente.ClienteID=Casa_Cliente.ClienteID;
