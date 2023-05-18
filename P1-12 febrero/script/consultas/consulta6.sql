-- CONSULTA 6
use Practica1_semi2;

select tiempo.año, sum(desastre.totalMuertes) as TOTALAÑOS_totalMuertes from desastre 
inner join tiempo on tiempo.idTiempo = desastre.idTiempo
group by tiempo.año 
order by TOTALAÑOS_totalMuertes desc
offset 0 rows fetch first 5 rows only