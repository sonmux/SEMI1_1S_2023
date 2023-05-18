-- CONSULTA 8
use Practica1_semi2;

select pais.nombrePais, sum(desastre.casasDestruidas) as TOTALPAISES_casasDestruidas from desastre 
inner join pais on desastre.idPais = pais.idPais
group by pais.nombrePais 
order by TOTALPAISES_casasDestruidas desc
offset 0 rows fetch first 5 rows only