@AbapCatalog.sqlViewName: 'ZC21AIRPORTVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Value Help Airport'
define view ZC_21_AIRPORTVH
  as select from sairport
{
  key id   as Id,
      name as Name
}
