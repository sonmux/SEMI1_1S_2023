use py1dw

create table proveedor(
    CodProveedor varchar(50) primary key,
    NombreProveedor varchar(800),
    DireccionProveedor varchar(800),
    NumeroProveedor int,
    WebProveedor varchar(800)
);

create table producto(
    CodProducto varchar(50) primary key,
    NombreProducto varchar(800),
    MarcaProducto varchar(800),
    Categoria varchar(800)
);

create table sucursal(
    CodSucursal varchar(50) primary key,
    NombreSucursal varchar(800),
    DireccionSucursal varchar(800),
    Region varchar(800),
    Departamento varchar(800)
);

create table compra(
	idCompra int identity(1,1) primary key,
    Fecha varchar(50),
    CodProveedor varchar(50),
    CodProducto varchar(50),
    CodSucursal varchar(50),
    Unidades int,
    CostoU float,
    foreign key (CodProveedor) references proveedor(CodProveedor),
    foreign key (CodProducto) references producto(CodProducto),
    foreign key (CodSucursal) references sucursal(CodSucursal)
);

create table cliente(
    CodigoCliente varchar(50) primary key,
    NombreCliente varchar(800),
    TipoCliente varchar(800),
    DireccionCliente varchar(800),
    NumeroCliente int
);

create table vendedor(
    CodVendedor varchar(50) primary key,
    NombreVendedor varchar(800),
    Vacacionista varchar(800)
);

create table venta(
	idVenta int identity(1,1) primary key,
    Fecha varchar(50),
    CodigoCliente varchar(50),
    CodVendedor varchar(50),
    CodProducto varchar(50),
    CodSucursal varchar(50),
    Unidades varchar(800),
    PrecioUnitario varchar(800),
    foreign key (CodigoCliente) references cliente(CodigoCliente),
    foreign key (CodVendedor) references vendedor(CodVendedor),
    foreign key (CodProducto) references producto(CodProducto),
    foreign key (CodSucursal) references sucursal(CodSucursal)
);

drop table venta;
drop table compra;
drop table proveedor;
drop table producto;
drop table sucursal;
drop table cliente;
drop table vendedor;

delete from proveedor;

select * from compra;

select count(*) from compra
where Unidades > 0 and CostoU > 0
where NumeroProveedor < 0