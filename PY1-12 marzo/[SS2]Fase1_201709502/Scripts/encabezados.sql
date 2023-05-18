--- TABLA TEMP COMP
create table tempComp(
    Fecha date,
    CodProveedor varchar(50),
    NombreProveedor varchar(50),
    DireccionProveedor varchar(50),
    NumeroProveedor int,
    WebProveedor varchar(50),
    CodProducto varchar(50),
    NombreProducto varchar(50),
    MarcaProducto varchar(50),
    Categoria varchar(50),
    CodSucursal varchar(50),
    NombreSucursal varchar(50),
    DireccionSucursal varchar(50),
    Region varchar(50),
    Departamento varchar(50),
    Unidades int,
    CostoU float
);

create table tiempo(
    Fecha date primary key
);

create table proveedor(
    CodProveedor varchar(50) primary key,
    NombreProveedor varchar(50),
    DireccionProveedor varchar(50),
    NumeroProveedor int,
    WebProveedor varchar(50)
);

create table producto(
    CodProducto varchar(50) primary key,
    NombreProducto varchar(50),
    MarcaProducto varchar(50),
    Categoria varchar(50)
);

create table sucursal(
    CodSucursal varchar(50) primary key,
    NombreSucursal varchar(50),
    DireccionSucursal varchar(50),
    Region varchar(50),
    Departamento varchar(50)
);

create table compra(
    Fecha date,
    CodProveedor varchar(50),
    CodProducto varchar(50),
    CodSucursal varchar(50),
    Unidades int,
    CostoU float,
	primary key (Fecha,CodProveedor,CodProducto,CodSucursal),
    foreign key (Fecha) references tiempo(Fecha),
    foreign key (CodProveedor) references proveedor(CodProveedor),
    foreign key (CodProducto) references producto(CodProducto),
    foreign key (CodSucursal) references sucursal(CodSucursal)
);


--- TABLA TEMP VENT
create table tempVent(
    Fecha date,
    CodigoCliente varchar(50),
    NombreCliente varchar(50),
    TipoCliente varchar(50),
    DireccionCliente varchar(50),
    NumeroCliente int,
    CodVendedor varchar(50),
    NombreVendedor varchar(50),
    Vacacionista int,
    CodProducto varchar(50),
    NombreProducto varchar(50),
    MarcaProducto varchar(50),
    Categoria varchar(50),
    CodSucursal varchar(50),
    NombreSucursal varchar(50),
    DireccionSucursal varchar(50),
    Region varchar(50),
    Departamento varchar(50),
    Unidades int,
    PrecioUnitario float
);

create table cliente(
    CodigoCliente varchar(50) primary key,
    NombreCliente varchar(50),
    TipoCliente varchar(50),
    DireccionCliente varchar(50),
    NumeroCliente int
);

create table vendedor(
    CodVendedor varchar(50) primary key,
    NombreVendedor varchar(50),
    Vacacionista int
);

create table venta(
    Fecha date primary key,
    CodigoCliente varchar(50),
    CodVendedor varchar(50),
    CodProducto varchar(50),
    CodSucursal varchar(50),
    Unidades int,
    PrecioUnitario float,
    foreign key (Fecha) references tiempo(Fecha),
    foreign key (CodigoCliente) references cliente(CodigoCliente),
    foreign key (CodVendedor) references vendedor(CodVendedor),
    foreign key (CodProducto) references producto(CodProducto),
    foreign key (CodSucursal) references sucursal(CodSucursal)
);









































--- COMP
15/05/2020
P0121
REVOLUTION FILM FEST AC
"19 avenida ""a"" 7-34, sector 8, condominio las orquídeas, alamedas de santa clara, zona 3, ,"
59566554
S
AC00080
Cerveza Miller Lite Lata 
ZENU
Vinos y Licores
S0112
Sucursal112
"22 avenida ""a"" 15-50 zona 10 colonia alcazar, 01010"
Nororiente3
Izabal
587
169.75



--- VENT
26/09/2020
C0224
Carlos Valerio Arezo Posada
Minorista
carretera a el salvador kilometro 19.9 lote 7, residenciales isabella,  de villa canales,
41478849
V0015
Marisa Daniela Bortoli Porro
0
OP00080
Queso colby - jack cheese crescent valley 
BRASILENA
Charcutería
S0101
Sucursal101
diagonal 20, 6-79 zona 11, colonia mariscal,
Nororiente4
Zacapa
239
63.29





















create table tempComp(
    Fecha varchar(max),
    CodProveedor varchar(max),
    NombreProveedor varchar(max),
    DireccionProveedor varchar(max),
    NumeroProveedor varchar(max),
    WebProveedor varchar(max),
    CodProducto varchar(max),
    NombreProducto varchar(max),
    MarcaProducto varchar(max),
    Categoria varchar(max),
    CodSucursal varchar(max),
    NombreSucursal varchar(max),
    DireccionSucursal varchar(max),
    Region varchar(max),
    Departamento varchar(max),
    Unidades varchar(max),
    CostoU varchar(max)
);

drop table tempComp

use py1tempComp

select * from tempComp















create database py1tempVent;
use py1tempVent;

drop table tempVent;

select*from tempVent;

create table tempVent(
    Fecha varchar(500),
    CodigoCliente varchar(500),
    NombreCliente varchar(500),
    TipoCliente varchar(500),
    DireccionCliente varchar(500),
    NumeroCliente varchar(500),
    CodVendedor varchar(500),
    NombreVendedor varchar(500),
    Vacacionista varchar(500),
    CodProducto varchar(500),
    NombreProducto varchar(500),
    MarcaProducto varchar(500),
    Categoria varchar(500),
    CodSucursal varchar(500),
    NombreSucursal varchar(500),
    DireccionSucursal varchar(500),
    Region varchar(500),
    Departamento varchar(500),
    Unidades varchar(500),
    PrecioUnitario varchar(500)
);