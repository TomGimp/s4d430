@AbapCatalog.sqlViewName: 'ZI21FLIGHTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional Interface-View: Flight'
@VDM.viewType: #TRANSACTIONAL
define view ZI_21_FlightTP
  as select from ZI_21_Flight
{
  key CarrierID,
  key ConnectionID,
  key FlightDate,
      Price,
      CurrencyCode,
      Planetype,
      MaxSeatsEconomy,
      OccupiedSeatsEconomy,
      Paymentsum,
      MaxSeatsBusiness,
      OccupiedSeatsBusiness,
      MaxSeatsFirst,
      OccupiedSeatsFirst
}
