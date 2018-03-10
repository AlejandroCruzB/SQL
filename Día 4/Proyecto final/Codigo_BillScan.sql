select Factura.Contenido, Factura.Fecha_factura, Factura.Garantia, Factura.Precio, Factura.Imagen_factura, Carpetas.Nombre_carpetas, Usuarios.Nombre, Usuarios.Parentesco
from Factura
inner join Factura_Carpetas on Factura_Carpetas.FacturaID=Factura.FacturaID
inner join Carpetas on Carpetas.CarpetasID=Factura_Carpetas.CarpetasID
inner join Carpetas_Usuarios on Carpetas_Usuarios.CarpetasID=Carpetas.CarpetasID
inner join Usuarios on Usuarios.UsuariosID=Carpetas_Usuarios.UsuariosID;
