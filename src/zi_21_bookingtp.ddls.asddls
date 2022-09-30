@AbapCatalog.sqlViewName: 'ZI21BOOKINGTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'BookingTP'

define view ZI_21_BookingTP
  as select from ZI_21_Booking
{
  key CarrID,
  key ConnID,
  key BookID,
      CustomID,
      CustType,
      Smoker,
      LuggWeight,
      Wunit,
      Invoice,
      Class,
      Forcuram,
      ForcurKey,
      Loccuram,
      LoccurKey,
      OrderDate,
      Counter,
      AgencyNum,
      Cancelled,
      Reserved,
      Passname,
      Passform,
      Passbirth

}
