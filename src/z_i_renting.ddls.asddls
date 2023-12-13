@AbapCatalog.sqlViewName: 'ZV_RENTL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view Z_I_Renting
  as select from Z_B_cars as Cars
  association [1]    to z_b_rem_days     as _RemDays on Cars.Matricula = _RemDays.Matricula
  association [0..*] to z_b_brands       as _Brands  on Cars.Marca = _Brands.Marca
  association [0..*] to z_b_det_customer as _DetCus  on Cars.Matricula = _DetCus.Matricula
{
  key Cars.Matricula,
      Cars.Marca,
      Cars.Modelo,
      Cars.Color,
      Cars.Motor,
      Cars.Potencia,
      Cars.UnidadPotencia,
      Cars.Combustible,
      Cars.Consumo,
      Cars.FechaFabricacion,
      Cars.Puertas,
      Cars.Precio,
      Cars.Moneda,
      Cars.Alquilado,
      Cars.Desde,
      Cars.Hasta,
      case
          when _RemDays.Dias <= 0 then 0
          when _RemDays.Dias between 0 and 30 then 1
          when _RemDays.Dias between 31 and 100 then 2
          when _RemDays.Dias > 100 then 3
          else 0
      end as DiasRestantes,
      
      // 0 Information
      // 1 Error
      // 2 Warning
      // 3 Success
      
      _Brands.Imagen,
      _DetCus


}
