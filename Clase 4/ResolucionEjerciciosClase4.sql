#1
select nombre, usuario
from empleado
inner join usuario on usuario.idempleado = empleado.idempleado;
#2
select email as correo
from empleado
inner join usuario on usuario.activo=1 && usuario.idempleado = empleado.idempleado;

#3
select count(autor)
from publicacion where autor = 'Eric G. Coronel Castillo';

#4
select sum(precio)
from venta
inner join empleado on  empleado.nombre = 'EMILIO' && empleado.idempleado = venta.idempleado ;