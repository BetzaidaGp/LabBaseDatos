

   select * from Persona
   where Edad > '40' 
	(select * from Empresa )



	  with PuestoEmpleado as (select * from Empleado)
  select * from Empleado 
	where PuestoEmpleado = '2'


SELECT IdDireccion, Estado INTO #PRt
FROM Estado
WHERE IdDireccion = '1'
	(select * from #PRt)
