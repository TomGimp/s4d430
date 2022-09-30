@AbapCatalog.sqlViewName: 'ZI21CUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic Interface-View: Customer'
@VDM.viewType: #BASIC
define view ZI_21_Customer
  as select from scustom
{
  key id       as ID,
      name     as Name,
      form     as Form,
      street   as Street,
      postcode as Postcode,
      city     as City,
      country  as Country,
      discount as Discount
}
