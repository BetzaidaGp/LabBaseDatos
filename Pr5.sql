
SELECT TOP 5 ID, nombre
FROM Empleado
order by nombre;

select Count(Banderazo) as Bsuma, Sum(idTarifa) as id, avg(Costoxmin) as salario
from Tarifas
group by idTarifa;

select SUM(edad) as suma, Count(id) as id, avg(salario) as salario
from Empleado
group by id;

select SUM(edad) as suma, 
Count(id) as id, avg(salario) as salario
from Empleado
where edad=25
group by id;

select SUM(salario) as salario, Count(edad) as edad, avg(id) as PrEdad
from Empleado
where edad>1
group by id;


select SUM(edad) as suma, 
Count(id) as id, avg(salario) as salario
from Empleado
group by id
having count(id)>0


select SUM(salario) as Ss, 
avg(id) as id, min(edad) as Ed
from Empleado
group by id
having min(id) > 1
