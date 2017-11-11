insert into Paciente (IdPaciente, IdPersona, Peso, Altura)
values ('3097AE5E-63AB-447F-9139-4E8F44372190', '3097A65E-63AB-447F-9139-4E8F44472190' , '50.60', '1.60');

insert into Paciente (IdPaciente, IdPersona, Peso, Altura)
values ('3097AE5E-63AB-447F-9139-5E8F44372190', '3097B65E-63AB-447F-9139-4E8F44472190' , '100', '2');

insert into Paciente (IdPaciente, IdPersona, Peso, Altura)
values ('BGP7AE5E-63AB-447F-9139-4E8F44372190', 'BGP7A65E-63AB-447F-9139-4E8F44472190' , '60', '1.39');

insert into ContactoSucursal (IdContactoSucursal, IdSucursal, Telefono, Correo)
values ('3097AE5E-63AB-447F-9139-4E8F43372190', '10' , '8156774421', 'btz@gmail.com');

insert into ContactoSucursal (IdContactoSucursal, IdSucursal, Telefono, Correo)
values ('3097AE5E-BGPB-447F-BGP9-4E8F43372190', '11' , '8155556666', 'btz@hotmail.com');

UPDATE Paciente
SET Peso = '50', Altura= '2'
WHERE IdPaciente = '3097AE5E-63AB-447F-9139-4E8F44372190';

UPDATE Paciente
SET Altura ='1.50'
WHERE IdPersona = '3097B65E-63AB-447F-9139-4E8F44472190';

UPDATE ContactoSucursal
SET Telefono ='5566778899'
WHERE IdSucursal = '10';

UPDATE ContactoSucursal
SET Correo ='betz_1200@hotmail.com'
WHERE IdSucursal = '10';

UPDATE Paciente
SET Altura ='1.50'
WHERE IdPaciente = '3097AE5E-63AB-447F-9139-5E8F44372190';

DELETE from ContactoSucursal
where IdSucursal = '10';

DELETE from Empresa
where IdEmpresa = '2';

DELETE from Consultorio
where IdConsultorio = '1';

Delete from Medico
where IdMedico = '1';

Delete from Categoria
where Descripcion = 'Cronico';