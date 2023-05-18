drop table temporal;
drop table desastre;
drop table tsunami;
drop table pais;
drop table tiempo;

-- eliminar la fila 2 porque esta vacia
-- modificar con valor 0 todas las celdas vacias
-- usar float para los segundos
-- usar float para total damage

/*create table temporal(
	anio int,
	mes int,
	dia int,
	hora int,
	minuto int,
	segundo float, --int 839
	TsunamiEvent int,
	TsunamiCause int,
	EarthquakeMagnitude float,
	Deposits int,
	Latitude float,
	Longitude float,
	MaximumWaterHeight float,
	NumberRunups int,
	TsunamiMagnitude float,
	TsunamiIntensity float,
	TotalDeaths int,
	TotalMissing int,
	TotalMissingDescription int,
	TotalInjuries int,
	TotalDamage float,--int 400
	TotalDamageDescription int,
	TotalHousesDestroyed int,
	TotalHousesDamaged int,
	Country varchar(250),
	LocationName varchar(250)
);*/

create table temporal(
	anio int,
	mes int,
	dia int,
	TsunamiEvent int,
	MaximumWaterHeight float,
	TotalDeaths int,
	TotalDamage float,--int 400
	TotalHousesDestroyed int,
	TotalHousesDamaged int,
	Country varchar(250)
);


bulk insert
	temporal
from
	'C:\Users\anggelo\Desktop\enunciados\semi\P1-12 febrero\historial.csv'
with(
	fieldterminator = ',',
	rowterminator = '\n',
	firstrow = 2
);

select * from temporal;




/*create table tiempo(
	idTiempo int identity(1,1) primary key,
	a�o int,
	mes int,
	dia int
);*/
create table tiempo(
	idTiempo int identity(1,1) primary key,
	a�o int
);

create table pais(
	idPais int identity(1,1) primary key,
	nombrePais varchar(250)
);

create table tsunami(
	idTsunami int identity(1,1) primary key,
	--cantidad int,
	alturaOla float
);

create table desastre(
	idDesastre int identity(1,1) primary key,
	totalMuertes int,
	totalDa�os float,
	casasDestruidas int,
	casasDa�adas int,
	idTiempo int,
	idPais int,
	idTsunami int,
	foreign key (idTiempo) references tiempo(idTiempo),
	foreign key (idPais) references pais(idPais),
	foreign key (idTsunami) references tsunami(idTsunami)
);

insert into tiempo (a�o) 
--insert into tiempo (a�o,mes,dia) 
	--(select distinct temporal.anio, temporal.mes, temporal.dia from temporal)
	(select distinct temporal.anio from temporal)
;
select * from tiempo;

insert into pais (nombrePais)
	(select distinct temporal.Country from temporal)
;
select * from pais;

insert into tsunami (alturaOla)
--insert into tsunami (cantidad, alturaOla)
	--(select distinct temporal.TsunamiEvent, temporal.MaximumWaterHeight from temporal)
	(select distinct temporal.MaximumWaterHeight from temporal)
;
select * from tsunami;

insert into desastre (totalMuertes,totalDa�os,casasDestruidas,casasDa�adas,idTiempo,idPais,idTsunami)
	(select temporal.TotalDeaths,temporal.TotalDamage,temporal.TotalHousesDestroyed,temporal.TotalHousesDamaged,
	--(select top 1 idTiempo from tiempo where temporal.anio = tiempo.a�o and temporal.mes = tiempo.mes and temporal.dia = tiempo.dia),
	(select top 1 idTiempo from tiempo where temporal.anio = tiempo.a�o),
	(select top 1 idPais from pais where temporal.Country = pais.nombrePais),
	(select top 1 idTsunami from tsunami where temporal.MaximumWaterHeight = tsunami.alturaOla)
	from temporal)
select * from desastre


-- CONSULTA 1
select count(*) as registrosTiempo from tiempo
select count(*) as registrosPais from pais
select count(*) as registrosTsunami from tsunami
select count(*) as registrosDesastre from desastre
select count(*) as registrosTemporal from temporal

-- CONSULTA 2
select tiempo.a�o, count(tiempo.a�o) as cantidad from desastre 
inner join tiempo on desastre.idTiempo = tiempo.idTiempo
group by tiempo.a�o

-- CONSULTA 3
select pais.nombrePais,tiempo.a�o from desastre 
inner join pais on desastre.idPais = pais.idPais
inner join tiempo on desastre.idTiempo = tiempo.idTiempo
order by pais.nombrePais

-- CONSULTA 4
select pais.nombrePais, avg(all desastre.totalDa�os) as AVG_TotalDamage from desastre
inner join pais on desastre.idPais = pais.idPais
group by pais.nombrePais

-- CONSULTA 5
select pais.nombrePais, sum(desastre.totalMuertes) as TOTALPAISES_totalMuertes from desastre 
inner join pais on desastre.idPais = pais.idPais
group by pais.nombrePais 
order by TOTALPAISES_totalMuertes desc
offset 0 rows fetch first 5 rows only

-- CONSULTA 6
select tiempo.a�o, sum(desastre.totalMuertes) as TOTALA�OS_totalMuertes from desastre 
inner join tiempo on tiempo.idTiempo = desastre.idTiempo
group by tiempo.a�o 
order by TOTALA�OS_totalMuertes desc
offset 0 rows fetch first 5 rows only

-- CONSULTA 7
select tiempo.a�o, count(tiempo.a�o) as TOTAL_tsunamiA�o from desastre 
inner join tiempo on desastre.idTiempo = tiempo.idTiempo
group by tiempo.a�o 
order by TOTAL_tsunamiA�o desc
offset 0 rows fetch first 5 rows only

-- CONSULTA 8
select pais.nombrePais, sum(desastre.casasDestruidas) as TOTALPAISES_casasDestruidas from desastre 
inner join pais on desastre.idPais = pais.idPais
group by pais.nombrePais 
order by TOTALPAISES_casasDestruidas desc
offset 0 rows fetch first 5 rows only

-- CONSULTA 9
select pais.nombrePais, sum(desastre.casasDa�adas) as TOTALPAISES_casasDa�adas from desastre 
inner join pais on desastre.idPais = pais.idPais
group by pais.nombrePais 
order by TOTALPAISES_casasDa�adas desc
offset 0 rows fetch first 5 rows only

-- CONSULTA 10
select pais.nombrePais, avg(tsunami.alturaOla) as AVG_alturaMaximaAgua from desastre
inner join pais on desastre.idPais = pais.idPais
inner join tsunami on desastre.idTsunami = tsunami.idTsunami
group by pais.nombrePais