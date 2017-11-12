create view EmpleadoAl as
select Empleado.IdEmpleado, Empleado.Sueldo, Empleado.Encargado, Empleado.PuestoEmpleado, Estatus.Descripcion
from Empleado, Estatus

create view EstatusEm as
select Empleado.Encargado, Empleado.Sueldo, Empleado.PuestoEmpleado, Estatus.Descripcion
from Empleado, Estatus


create view MedicoAll as
select Persona.ApPaterno, Persona.Nombre, Medico.IdEmpleado,Medico.IdMedico, Empleado.PuestoEmpleado
from Medico
inner join Persona on Empleado.IdEmpleado = Persona.IdPersona



