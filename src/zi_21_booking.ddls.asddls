@AbapCatalog.sqlViewName: 'ZI21BOOK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Booking'
define view ZI_21_Booking
  as select from sbook
{
  key carrid     as CarrID,
  key connid     as ConnID,
      // key fldate as Fldate,
  key bookid     as BookID,
      customid   as CustomID,
      custtype   as CustType,
      smoker     as Smoker,
      luggweight as LuggWeight,
      wunit      as Wunit,
      invoice    as Invoice,
      class      as Class,
      forcuram   as Forcuram,
      forcurkey  as ForcurKey,
      loccuram   as Loccuram,
      loccurkey  as LoccurKey,
      order_date as OrderDate,
      counter    as Counter,
      agencynum  as AgencyNum,
      cancelled  as Cancelled,
      reserved   as Reserved,
      passname   as Passname,
      passform   as Passform,
      passbirth  as Passbirth
}
