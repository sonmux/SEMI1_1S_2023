-- CONSULTA 3
use Practica1_semi2;

/*select pais.nombrePais,tiempo.año from desastre 
inner join pais on desastre.idPais = pais.idPais
inner join tiempo on desastre.idTiempo = tiempo.idTiempo
order by pais.nombrePais*/



select distinct año into #TempAño from tiempo 

--select * from #TempAño

declare @AÑOS varchar(max) = '', @varQuery varchar(max)
--select @AÑOS

select @AÑOS= @AÑOS +',['+ cast(año as varchar(25)) +']' from #TempAño

set @AÑOS=stuff(@AÑOS,1,1,'')

--select @AÑOS 

set @varQuery='
select * from (
select pais.nombrePais,tiempo.año, tiempo.año as año2 from desastre 
inner join pais on desastre.idPais = pais.idPais
inner join tiempo on desastre.idTiempo = tiempo.idTiempo
--order by pais.nombrePais
) Pr
PIVOT
(
	max(año2)
	for año in ('+@AÑOS+')
) as pvt'

exec (@varQuery)