create trigger xd
on Empleado
after insert
as
begin
select * from inserted
end


create function Fs(@V1 int, @v2 int, @v3 int)
returns int
begin 
return (@v1 * @v2) / @v3
end

select dbo.Fs (10,10,5)


create trigger ShowAll
on Paciente
instead of insert
as
begin
select * from inserted 
end