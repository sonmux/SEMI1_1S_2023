use Practica1_semi2;

insert into tiempo (año) 
	(select distinct temporal.anio from temporal)
;

insert into pais (nombrePais)
	(select distinct temporal.Country from temporal)
;

insert into tsunami (alturaOla)
	(select distinct temporal.MaximumWaterHeight from temporal)
;

insert into desastre (totalMuertes,totalDaños,casasDestruidas,casasDañadas,idTiempo,idPais,idTsunami)
	(select temporal.TotalDeaths,temporal.TotalDamage,temporal.TotalHousesDestroyed,temporal.TotalHousesDamaged,
	(select top 1 idTiempo from tiempo where temporal.anio = tiempo.año),
	(select top 1 idPais from pais where temporal.Country = pais.nombrePais),
	(select top 1 idTsunami from tsunami where temporal.MaximumWaterHeight = tsunami.alturaOla)
	from temporal)
;