@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite (Calc) CDS View : TRIP'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define view entity ZAKS_CMP_CDS_TRIP
  as select from zaks_trip
  association [1] to zaks_vehicle as _Vehicle on $projection.VehicleId = _Vehicle.vehicle_id
{
  key trip_uuid                    as TripUUID,
  key trip_id                      as TripId,
      vehicle_id                   as VehicleId,
      driver_id                    as DriverId,
      origin                       as Origin,
      destination                  as Destination,
      start_date                   as StartDate,
      end_date                     as EndDate,
      distance_km                  as DistanceKm,

      @Semantics.amount.currencyCode: 'Currency'
      cast( distance_km *
            case _Vehicle.fuel_type
          when 'P' then cast( 100 as abap.dec(5,2) )
          when 'D' then cast( 90 as abap.dec(5,2) )
          when 'C' then cast( 70 as abap.dec(5,2) )
          when 'E' then cast( 10 as abap.dec(5,2) )
          else cast( 0 as abap.dec(5,2) )
          end as abap.curr(15,2) ) as total_trip_cost,

      _Vehicle.currency            as Currency,
      cargo_type                   as CargoType,
      created_by                   as CreatedBy,
      created_on                   as CreatedOn,

      _Vehicle
}
