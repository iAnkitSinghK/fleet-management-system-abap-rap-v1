@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS View : Maintenance'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZAKS_I_CDS_MAINTENANCE as select from zaks_maintenance
association to parent ZAKS_I_ROOT_VEHICLE as _Vehicle
    on $projection.VehicleId = _Vehicle.VehicleId and $projection.VehicleUUID = _Vehicle.VehicleUUID
{
    key maint_uuid as MaintUUID,
    key maint_id as MaintId,
    vehicle_uuid as VehicleUUID,
    vehicle_id as VehicleId,
    service_date as ServiceDate,
    service_type as ServiceType,
    workshop_name as WorkshopName,
    @Semantics.amount.currencyCode: 'Currency' 
    service_cost as ServiceCost,
    currency as Currency,
    odometer_reading as OdometerReading,
    parts_changed as PartsChanged,
    warranty_claim as WarrantyClaim,
    next_service_date as NextServiceDate,
    material_number as MaterialNumber,
    vendor_number as VendorNumber,
    created_by as CreatedBy,
    created_on as CreatedOn,
    
    _Vehicle
}
