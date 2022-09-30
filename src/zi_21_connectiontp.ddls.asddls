@AbapCatalog.sqlViewName: 'ZI21CONNTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional Interface-View: Connection'
@VDM.viewType: #TRANSACTIONAL
@ObjectModel: {
    transactionalProcessingEnabled: true,
    compositionRoot: true,
    writeActivePersistence: 'ZV00CONN',

    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true,

    modelCategory: #BUSINESS_OBJECT,
    semanticKey: ['CarrierID', 'ConnectionID'],
    representativeKey: 'ConnectionID'
}
define view ZI_21_ConnectionTP
  as select from ZI_21_Connection
{
  key CarrierID,
  key ConnectionID,
      CountryFrom,
      CityFrom,
      AirportFrom,
      CountryTo,
      CityTo,
      AirportTo,
      DepartureTime,
      ArrivalTime,
      Distance,
      DistanceUnit,
      FlightType,
      Period
}
