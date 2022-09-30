@AbapCatalog.sqlViewName: 'ZC21CUSTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CustomerTP'
@OData.publish: true
@Metadata.allowExtensions: true
@ObjectModel: {
    transactionalProcessingDelegated: true,
    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}
@Search.searchable: true
define view ZC_21_CustomerTP
  as select from ZI_21_CustomerTP
  association [0..*] to ZC_21_BookingTP as _Bookings on _Bookings.CustomID = ZI_21_CustomerTP.ID
{
  key ID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Name,
      Form,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Street,
      Postcode,
      City,
      Country,
      Discount,
      _Bookings

}
