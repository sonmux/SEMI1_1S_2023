-- CONSULTA 5
use Practica1_semi2;

select pais.nombrePais, sum(desastre.totalMuertes) as TOTALPAISES_totalMuertes from desastre 
inner join pais on desastre.idPais = pais.idPais
group by pais.nombrePais 
order by TOTALPAISES_totalMuertes desc
offset 0 rows fetch first 5 rows only