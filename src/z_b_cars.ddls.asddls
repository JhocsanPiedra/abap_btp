@AbapCatalog.sqlViewName: 'ZV_CARSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic Cars'
@Metadata.allowExtensions: true

define view Z_B_cars as select from zrent_cars
{
    key matricula as Matricula,
    marca as Marca,
    modelo as Modelo,
    color as Color,
    motor as Motor,
    potencia as Potencia,
    und_potencia as UnidadPotencia,
    combustible as Combustible,
    consumo as Consumo,
    fecha_fabr as FechaFabricacion,
    puertas as Puertas,
    precio as Precio,
    moneda as Moneda,
    alquilado as Alquilado,
    alq_desde as Desde,
    alq_hasta as Hasta
}
