@AbapCatalog.sqlViewName: 'ZC21CONNTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional Consumption-View'
@VDM.viewType: #CONSUMPTION
@OData.publish: true
@Metadata.allowExtensions: true
@ObjectModel: {
    transactionalProcessingEnabled: true,
    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}

define view ZC_21_ConnectionTP
  as select from ZI_21_ConnectionTP
  association [0..*] to ZC_21_FlightTP as _Flights on  _Flights.CarrierID    = ZI_21_ConnectionTP.CarrierID
                                                   and _Flights.ConnectionID = ZI_21_ConnectionTP.ConnectionID
    association [1..1] to ZC_21_AIRPORTVH as _AirportFrom on ZI_21_ConnectionTP.AirportFrom = _AirportFrom.Id
    association [1..1] to ZC_21_AIRPORTVH as _AirportTo on ZI_21_ConnectionTP.AirportTo = _AirportTo.Id
{
  key CarrierID,
  key ConnectionID,
      CountryFrom,
      CityFrom,
      @Consumption.valueHelp: '_AirportFrom'
      AirportFrom,
      CountryTo,
      CityTo,
      @Consumption.valueHelp: '_AirportTo'
      AirportTo,
      DepartureTime,
      ArrivalTime,
      Distance,
      DistanceUnit,
      FlightType,
      Period,
      _Flights,
      _AirportFrom,
      _AirportTo
}
