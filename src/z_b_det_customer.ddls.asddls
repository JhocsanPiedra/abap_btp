@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic Details Customer'
@Metadata.allowExtensions: true

define view z_b_det_customer as select from zrent_customers
{
    key doc_id as ID,
    key matricula as Matricula,
    nombres as Nombre,
    apellidos as Apellidos,
    email as Correo,
    cntr_type as TipoContrato
}
