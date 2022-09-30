@AbapCatalog.sqlViewName: 'ZC21BOOKINGTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'BookingTP'
@OData.publish: true
@Metadata.allowExtensions: true

define view ZC_21_BookingTP
  as select from ZI_21_BookingTP
  association [1..1] to ZC_21_CustomerTP as _Customers on _Customers.ID = ZI_21_BookingTP.CustomID
{
  key ZI_21_BookingTP.CarrID,
  key ZI_21_BookingTP.ConnID,
  key ZI_21_BookingTP.BookID,
      ZI_21_BookingTP.CustomID,
      ZI_21_BookingTP.CustType,
      ZI_21_BookingTP.Smoker,
      ZI_21_BookingTP.LuggWeight,
      ZI_21_BookingTP.Wunit,
      ZI_21_BookingTP.Invoice,
      ZI_21_BookingTP.Class,
      ZI_21_BookingTP.Forcuram,
      ZI_21_BookingTP.ForcurKey,
      ZI_21_BookingTP.Loccuram,
      ZI_21_BookingTP.LoccurKey,
      ZI_21_BookingTP.OrderDate,
      ZI_21_BookingTP.Counter,
      ZI_21_BookingTP.AgencyNum,
      ZI_21_BookingTP.Cancelled,
      ZI_21_BookingTP.Reserved,
      ZI_21_BookingTP.Passname,
      ZI_21_BookingTP.Passform,
      ZI_21_BookingTP.Passbirth,
      _Customers

}
