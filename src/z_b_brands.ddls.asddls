@AbapCatalog.sqlViewName: 'ZV_BRANDSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic Brands'
define view z_b_brands
  as select from zrent_brands
{
  key marca as Marca,
  
  @UI.hidden: true // Oculta el campo del HelpValue
      url   as Imagen
}
