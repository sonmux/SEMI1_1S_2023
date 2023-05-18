-- CONSULTA 9
use Practica1_semi2;

select pais.nombrePais, sum(desastre.casasDañadas) as TOTALPAISES_casasDañadas from desastre 
inner join pais on desastre.idPais = pais.idPais
group by pais.nombrePais 
order by TOTALPAISES_casasDañadas desc
offset 0 rows fetch first 5 rows only