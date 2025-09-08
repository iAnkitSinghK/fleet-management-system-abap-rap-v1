@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Root View : Vehicle'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZAKS_I_ROOT_VEHICLE as select from zaks_vehicle
composition [0..*] of ZAKS_I_CDS_TRIP as _Trip
composition [0..*] of ZAKS_I_CDS_MAINTENANCE as _Maintenance
{   
    key vehicle_uuid as VehicleUUID,
    key vehicle_id as VehicleId,
    regd_no as RegdNo,
    vehicle_type as VehicleType,
    brand as Brand,
    model as Model,
    purchase_date as PurchaseDate,  
    @Semantics.amount.currencyCode: 'Currency'
    cost_price as CostPrice,
    currency as Currency,
    fuel_type as FuelType, 
    capacity as Capacity,
    capacity_unit as CapacityUnit,
    status as Status,
    plant as Plant,
    created_by as CreatedBy,
    created_on as CreatedOn,
    
    _Trip,
    _Maintenance
}
