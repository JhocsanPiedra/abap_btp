@AbapCatalog.sqlViewName: 'ZV_REM_DAYSL'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista Básica Remaining Days'
define view z_b_rem_days
  as select from zrent_cars
{
  key matricula as Matricula,
      marca     as Marca,
      case
      when alq_hasta <> ''
      then dats_days_between( cast( $session.system_date as abap.dats ), alq_hasta) /* Cuenta los días desde la fecha actual hasta el final del alquiler */
      end       as Dias
}
