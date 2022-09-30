@AbapCatalog.sqlViewName: 'Z21CUSTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional Interface-View: Connection'
@VDM.viewType: #TRANSACTIONAL
@ObjectModel: {
    transactionalProcessingEnabled: true,
    compositionRoot: true,
    writeActivePersistence: 'SCUSTOM',

    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true,

    modelCategory: #BUSINESS_OBJECT,
    semanticKey: ['ID'],
    representativeKey: 'Name'
}
define view ZI_21_CustomerTP
  as select from ZI_21_Customer
{
    key ID       as ID,
      Name     as Name,
      Form     as Form,
      Street   as Street,
      Postcode as Postcode,
      City     as City,
      Country  as Country,
      Discount as Discount
}
