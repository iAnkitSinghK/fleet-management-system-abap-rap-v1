@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View -- CDS Interface (Trip)'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZAKS_P_CDS_TRIP as projection on ZAKS_I_CDS_TRIP
{
    key TripUUID,
    key TripId,
    VehicleUUID,
    VehicleId,
    DriverId,
    Origin,
    Destination,
    StartDate,
    EndDate, 
    DistanceKm,
    @Semantics.amount.currencyCode: 'Currency'
    total_trip_cost,
    Currency,
    CargoType,
    CreatedBy,
    CreatedOn,
    /* Associations */
    _Vehicle : redirected to parent ZAKS_P_ROOT_VEHICLE
}
