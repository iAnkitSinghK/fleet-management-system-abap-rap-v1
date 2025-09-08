@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View -- Root Interface'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZAKS_P_ROOT_VEHICLE as projection on ZAKS_I_ROOT_VEHICLE
{
    key VehicleUUID,
    key VehicleId,
    RegdNo,
    VehicleType,
    Brand,
    Model,
    PurchaseDate,
    @Semantics.amount.currencyCode: 'Currency'
    CostPrice,
    Currency,
    FuelType,
    Capacity,
    CapacityUnit,
    Status,
    Plant,
    CreatedBy,
    CreatedOn,
    /* Associations */
    _Maintenance : redirected to composition child ZAKS_P_CDS_MAINTENANCE,
    _Trip : redirected to composition child ZAKS_P_CDS_TRIP
}
