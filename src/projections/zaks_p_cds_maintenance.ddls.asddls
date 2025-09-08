@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View -- Maintenance Interface'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZAKS_P_CDS_MAINTENANCE as projection on ZAKS_I_CDS_MAINTENANCE
{
    key MaintUUID,
    key MaintId,
    VehicleUUID,
    VehicleId,
    ServiceDate,
    ServiceType,
    WorkshopName,
    @Semantics.amount.currencyCode: 'Currency'
    ServiceCost,
    Currency,
    OdometerReading,
    PartsChanged,
    WarrantyClaim,
    NextServiceDate,
    MaterialNumber,
    VendorNumber,
    CreatedBy,
    CreatedOn,
    /* Associations */
    _Vehicle : redirected to parent ZAKS_P_ROOT_VEHICLE
}
