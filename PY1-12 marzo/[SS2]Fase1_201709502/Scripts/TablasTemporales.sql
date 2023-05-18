create table tempComp(
    Fecha varchar(50),
    CodProveedor varchar(50),
    NombreProveedor varchar(800),
    DireccionProveedor varchar(800),
    NumeroProveedor varchar(800),
    WebProveedor varchar(800),
    CodProducto varchar(50),
    NombreProducto varchar(800),
    MarcaProducto varchar(800),
    Categoria varchar(800),
    CodSucursal varchar(50),
    NombreSucursal varchar(800),
    DireccionSucursal varchar(800),
    Region varchar(800),
    Departamento varchar(800),
    Unidades varchar(800),
    CostoU varchar(800)
);

drop table tempComp;

select * from tempComp;

delete from tempComp;





create table tempVent(
    Fecha varchar(50),
    CodigoCliente varchar(50),
    NombreCliente varchar(800),
    TipoCliente varchar(800),
    DireccionCliente varchar(800),
    NumeroCliente varchar(800),
    CodVendedor varchar(50),
    NombreVendedor varchar(800),
    Vacacionista varchar(800),
    CodProducto varchar(50),
    NombreProducto varchar(800),
    MarcaProducto varchar(800),
    Categoria varchar(800),
    CodSucursal varchar(50),
    NombreSucursal varchar(800),
    DireccionSucursal varchar(800),
    Region varchar(800),
    Departamento varchar(800),
    Unidades varchar(800),
    PrecioUnitario varchar(800)
);

drop table tempVent;

select*from tempVent;

delete from tempVent;



select*from tempVent;
select*from tempComp;

delete from tempVent;
delete from tempComp;