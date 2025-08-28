@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS View : Trip'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZAKS_I_CDS_TRIP as select from ZAKS_CMP_CDS_TRIP
association to parent ZAKS_I_ROOT_VEHICLE as _Vehicle
    on $projection.VehicleId = _Vehicle.VehicleId and $projection.VehicleUUID = _Vehicle.VehicleUUID
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
    _Vehicle
}
