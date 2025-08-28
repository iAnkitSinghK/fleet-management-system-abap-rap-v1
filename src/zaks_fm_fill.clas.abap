CLASS zaks_fm_fill DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES : if_oo_adt_classrun.
ENDCLASS.



CLASS zaks_fm_fill IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DELETE FROM : zaks_vehicle,
                  zaks_trip,
                  zaks_maintenance.
    DATA : lt_vehicle TYPE table of zaks_vehicle,
           lt_trip TYPE table of zaks_trip,
           lt_maintenance TYPE table of zaks_maintenance.
     DATA(lv_date) = cl_abap_context_info=>get_system_date( ).

           lt_vehicle = VALUE #(
      ( client = sy-mandt vehicle_id = 'V001' regd_no = 'MH12AB1234' vehicle_type = 'CAR'    brand = 'TOYOTA'     model = 'COROLLA'   purchase_date = '20220101' cost_price = 1200000 currency = 'INR' fuel_type = 'P' capacity = '5'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '1000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V002' regd_no = 'DL05CD5678' vehicle_type = 'SUV'    brand = 'HYUNDAI'    model = 'CRETA'     purchase_date = '20210315' cost_price = 1600000 currency = 'INR' fuel_type = 'D' capacity = '5'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '1000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V003' regd_no = 'KA01EF4321' vehicle_type = 'TRUCK'  brand = 'ASHOK LEYLAND' model = 'DOST'    purchase_date = '20191220' cost_price = 850000  currency = 'INR' fuel_type = 'D' capacity = '3'   capacity_unit = 'TON'
status = 'ACTIVE'   plant = '2000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V004' regd_no = 'GJ18GH8765' vehicle_type = 'BUS'    brand = 'TATA'       model = 'MARCOPLO'  purchase_date = '20200105' cost_price = 2500000 currency = 'INR' fuel_type = 'D' capacity = '40'  capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '2000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V005' regd_no = 'TN09IJ2345' vehicle_type = 'CAR'    brand = 'HONDA'      model = 'CITY'      purchase_date = '20220412' cost_price = 1400000 currency = 'INR' fuel_type = 'P' capacity = '5'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '1000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V006' regd_no = 'RJ27KL9876' vehicle_type = 'PICKU'  brand = 'MAHINDRA'   model = 'BOLERO'    purchase_date = '20181123' cost_price = 900000  currency = 'INR' fuel_type = 'D' capacity = '2'   capacity_unit = 'TON'
status = 'ACTIVE'   plant = '3000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V007' regd_no = 'MH14MN4567' vehicle_type = 'MCY'    brand = 'ROYAL ENFIELD' model = 'CLASSIC' purchase_date = '20220701' cost_price = 200000  currency = 'INR' fuel_type = 'P' capacity = '2'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '4000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V008' regd_no = 'UP16OP6789' vehicle_type = 'TRUCK'  brand = 'BHARATBENZ' model = '2523R'     purchase_date = '20191010' cost_price = 3000000 currency = 'INR' fuel_type = 'D' capacity = '16'  capacity_unit = 'TON'
status = 'ACTIVE'   plant = '2000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V009' regd_no = 'HR26QR1111' vehicle_type = 'SUV'    brand = 'MAHINDRA'   model = 'XUV500'    purchase_date = '20210505' cost_price = 1700000 currency = 'INR' fuel_type = 'D' capacity = '7'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '1000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V010' regd_no = 'PB10ST2222' vehicle_type = 'BUS'    brand = 'EICHER'     model = 'SKYLINE'   purchase_date = '20200222' cost_price = 1800000 currency = 'INR' fuel_type = 'D' capacity = '50'  capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '2000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V011' regd_no = 'WB20UV3333' vehicle_type = 'CAR'    brand = 'SUZUKI'     model = 'BALENO'    purchase_date = '20220611' cost_price = 800000  currency = 'INR' fuel_type = 'P' capacity = '5'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '4000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V012' regd_no = 'KL07WX4444' vehicle_type = 'TRUCK'  brand = 'TATA'       model = 'PRIMA'     purchase_date = '20191230' cost_price = 2200000 currency = 'INR' fuel_type = 'D' capacity = '20'  capacity_unit = 'TON'
status = 'ACTIVE'   plant = '2000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V013' regd_no = 'BR01YZ5555' vehicle_type = 'MCY'    brand = 'BAJAJ'      model = 'PULSAR'    purchase_date = '20220725' cost_price = 120000  currency = 'INR' fuel_type = 'P' capacity = '2'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '4000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V014' regd_no = 'CG04AB6666' vehicle_type = 'SUV'    brand = 'KIA'        model = 'SELTOS'    purchase_date = '20210418' cost_price = 1500000 currency = 'INR' fuel_type = 'P' capacity = '5'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '1000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V015' regd_no = 'OR05CD7777' vehicle_type = 'CAR'    brand = 'FORD'       model = 'ECOSPORT'  purchase_date = '20210101' cost_price = 1100000 currency = 'INR' fuel_type = 'P' capacity = '5'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '3000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V016' regd_no = 'AP09EF8888' vehicle_type = 'PICKU'  brand = 'ISUZU'      model = 'D-MAX'     purchase_date = '20190509' cost_price = 1500000 currency = 'INR' fuel_type = 'D' capacity = '3'   capacity_unit = 'TON'
status = 'ACTIVE'   plant = '3000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V017' regd_no = 'MH31GH9999' vehicle_type = 'TRUCK'  brand = 'VOLVO'      model = 'FMX440'    purchase_date = '20181111' cost_price = 5000000 currency = 'INR' fuel_type = 'D' capacity = '25'  capacity_unit = 'TON'
status = 'ACTIVE'   plant = '2000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V018' regd_no = 'TS08IJ0001' vehicle_type = 'CAR'    brand = 'TESLA'      model = 'MODEL 3'   purchase_date = '20230101' cost_price = 3500000 currency = 'INR' fuel_type = 'E' capacity = '5'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '1000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V019' regd_no = 'UK07KL0002' vehicle_type = 'SUV'    brand = 'MG'         model = 'HECTOR'    purchase_date = '20220303' cost_price = 1800000 currency = 'INR' fuel_type = 'P' capacity = '5'   capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '1000' created_by = sy-uname created_on = lv_date )
      ( client = sy-mandt vehicle_id = 'V020' regd_no = 'CH01MN0003' vehicle_type = 'BUS'    brand = 'MERCEDES'   model = 'TOURRIDER' purchase_date = '20200120' cost_price = 8000000 currency = 'INR' fuel_type = 'D' capacity = '55'  capacity_unit = 'PAX'
status = 'ACTIVE'   plant = '2000' created_by = sy-uname created_on = lv_date )
    ).

    INSERT zaks_vehicle FROM TABLE @lt_vehicle.

        lt_trip = VALUE #(
  ( client = sy-mandt trip_id = 'T001' vehicle_id = 'V001' driver_id = '88989989' start_date = '20240101' end_date = '20240102'
    origin = 'PUNE' destination = 'MUMBAI' cargo_type = 'GEN' distance_km = 150 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T002' vehicle_id = 'V002' driver_id = '56567879' start_date = '20240103' end_date = '20240104'
    origin = 'DELHI' destination = 'AGRA' cargo_type = 'PASS' distance_km = 200 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T003' vehicle_id = 'V003' driver_id = '56567879' start_date = '20240105' end_date = '20240106'
    origin = 'CHENNAI' destination = 'BANGALORE' cargo_type = 'FOOD' distance_km = 350 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T004' vehicle_id = 'V004' driver_id = '34543232' start_date = '20240106' end_date = '20240107'
    origin = 'JAIPUR' destination = 'DELHI' cargo_type = 'PASS' distance_km = 280 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T005' vehicle_id = 'V005' driver_id = '87898789' start_date = '20240108' end_date = '20240109'
    origin = 'KOLKATA' destination = 'RANCHI' cargo_type = 'LIVESTK' distance_km = 400 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T006' vehicle_id = 'V006' driver_id = '56545432' start_date = '20240110' end_date = '20240111'
    origin = 'HYDERABAD' destination = 'CHENNAI' cargo_type = 'CHEM' distance_km = 600 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T007' vehicle_id = 'V007' driver_id = '56567879' start_date = '20240112' end_date = '20240113'
    origin = 'SURAT' destination = 'MUMBAI' cargo_type = 'TEXT' distance_km = 300 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T008' vehicle_id = 'V008' driver_id = '78767654' start_date = '20240114' end_date = '20240115'
    origin = 'LUCKNOW' destination = 'KANPUR' cargo_type = 'FOOD' distance_km = 80 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T009' vehicle_id = 'V009' driver_id = '56567879' start_date = '20240115' end_date = '20240116'
    origin = 'DELHI' destination = 'MUMBAI' cargo_type = 'PASS' distance_km = 1400 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T010' vehicle_id = 'V010' driver_id = '67654543' start_date = '20240116' end_date = '20240117'
    origin = 'BHOPAL' destination = 'INDORE' cargo_type = 'CONST' distance_km = 200 created_by = sy-uname created_on = lv_date )

  ( client = sy-mandt trip_id = 'T011' vehicle_id = 'V011' driver_id = '67654543' start_date = '20240118' end_date = '20240119'
    origin = 'PATNA' destination = 'KOLKATA' cargo_type = 'AGRI' distance_km = 500 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T012' vehicle_id = 'V012' driver_id = '67654543' start_date = '20240119' end_date = '20240120'
    origin = 'NAGPUR' destination = 'PUNE' cargo_type = 'GEN' distance_km = 700 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T013' vehicle_id = 'V013' driver_id = '56545432' start_date = '20240120' end_date = '20240121'
    origin = 'DELHI' destination = 'LUCKNOW' cargo_type = 'PASS' distance_km = 550 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T014' vehicle_id = 'V014' driver_id = '78787645' start_date = '20240122' end_date = '20240123'
    origin = 'CHANDIGARH' destination = 'DELHI' cargo_type = 'POST' distance_km = 250 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T015' vehicle_id = 'V015' driver_id = '34543232' start_date = '20240124' end_date = '20240125'
    origin = 'GOA' destination = 'PUNE' cargo_type = 'PASS' distance_km = 450 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T016' vehicle_id = 'V016' driver_id = '78787645' start_date = '20240125' end_date = '20240126'
    origin = 'MUMBAI' destination = 'AHMEDABAD' cargo_type = 'FOOD' distance_km = 500 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T017' vehicle_id = 'V017' driver_id = '56545432' start_date = '20240127' end_date = '20240128'
    origin = 'JAIPUR' destination = 'UDAIPUR' cargo_type = 'PASS' distance_km = 400 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T018' vehicle_id = 'V018' driver_id = '45653232' start_date = '20240128' end_date = '20240129'
    origin = 'BANGALORE' destination = 'MYSORE' cargo_type = 'GEN' distance_km = 200 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T019' vehicle_id = 'V019' driver_id = '78787645' start_date = '20240129' end_date = '20240130'
    origin = 'DELHI' destination = 'CHANDIGARH' cargo_type = 'PASS' distance_km = 260 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T020' vehicle_id = 'V020' driver_id = '45653232' start_date = '20240201' end_date = '20240202'
    origin = 'CHENNAI' destination = 'PONDICHERRY' cargo_type = 'FOOD' distance_km = 180 created_by = sy-uname created_on = lv_date )

  ( client = sy-mandt trip_id = 'T021' vehicle_id = 'V001' driver_id = '90872321' start_date = '20240203' end_date = '20240204'
    origin = 'MUMBAI' destination = 'SURAT' cargo_type = 'GEN' distance_km = 300 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T022' vehicle_id = 'V002' driver_id = '56545432' start_date = '20240205' end_date = '20240206'
    origin = 'DELHI' destination = 'JODHPUR' cargo_type = 'CONST' distance_km = 650 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T023' vehicle_id = 'V003' driver_id = '34543232' start_date = '20240206' end_date = '20240207'
    origin = 'KOLKATA' destination = 'PATNA' cargo_type = 'AGRI' distance_km = 580 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T024' vehicle_id = 'V004' driver_id = '34543232' start_date = '20240207' end_date = '20240208'
    origin = 'LUCKNOW' destination = 'GORAKHPUR' cargo_type = 'PASS' distance_km = 270 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T025' vehicle_id = 'V005' driver_id = '90872321' start_date = '20240208' end_date = '20240209'
    origin = 'MUMBAI' destination = 'GOA' cargo_type = 'PASS' distance_km = 600 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T026' vehicle_id = 'V006' driver_id = '34543232' start_date = '20240210' end_date = '20240211'
    origin = 'PUNE' destination = 'INDORE' cargo_type = 'FOOD' distance_km = 700 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T027' vehicle_id = 'V007' driver_id = '34543232' start_date = '20240212' end_date = '20240213'
    origin = 'SURAT' destination = 'RAJKOT' cargo_type = 'CHEM' distance_km = 450 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T028' vehicle_id = 'V008' driver_id = '90872321' start_date = '20240213' end_date = '20240214'
    origin = 'CHENNAI' destination = 'COIMBATORE' cargo_type = 'GEN' distance_km = 500 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T029' vehicle_id = 'V009' driver_id = '66767787' start_date = '20240214' end_date = '20240215'
    origin = 'MUMBAI' destination = 'DELHI' cargo_type = 'PASS' distance_km = 1400 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T030' vehicle_id = 'V010' driver_id = '66767787' start_date = '20240216' end_date = '20240217'
    origin = 'BHOPAL' destination = 'RAIPUR' cargo_type = 'CONST' distance_km = 500 created_by = sy-uname created_on = lv_date )

  ( client = sy-mandt trip_id = 'T031' vehicle_id = 'V011' driver_id = '90872321' start_date = '20240218' end_date = '20240219'
    origin = 'PATNA' destination = 'VARANASI' cargo_type = 'POST' distance_km = 300 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T032' vehicle_id = 'V012' driver_id = '90812321' start_date = '20240219' end_date = '20240220'
    origin = 'NAGPUR' destination = 'BHOPAL' cargo_type = 'GEN' distance_km = 400 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T033' vehicle_id = 'V013' driver_id = '99098786' start_date = '20240220' end_date = '20240221'
    origin = 'DELHI' destination = 'JALANDHAR' cargo_type = 'PASS' distance_km = 400 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T034' vehicle_id = 'V014' driver_id = '66767787' start_date = '20240221' end_date = '20240222'
    origin = 'CHANDIGARH' destination = 'LUDHIANA' cargo_type = 'FOOD' distance_km = 150 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T035' vehicle_id = 'V015' driver_id = '45653232' start_date = '20240223' end_date = '20240224'
    origin = 'PUNE' destination = 'NAGPUR' cargo_type = 'CONST' distance_km = 700 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T036' vehicle_id = 'V016' driver_id = '90986787' start_date = '20240224' end_date = '20240225'
    origin = 'MUMBAI' destination = 'DELHI' cargo_type = 'PASS' distance_km = 1400 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T037' vehicle_id = 'V017' driver_id = '98787656' start_date = '20240226' end_date = '20240227'
    origin = 'KOLKATA' destination = 'BHUBANESWAR' cargo_type = 'GEN' distance_km = 500 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T038' vehicle_id = 'V018' driver_id = '67654543' start_date = '20240227' end_date = '20240228'
    origin = 'MYSORE' destination = 'BANGALORE' cargo_type = 'PASS' distance_km = 200 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T039' vehicle_id = 'V019' driver_id = '87975654' start_date = '20240228' end_date = '20240301'
    origin = 'DELHI' destination = 'MEERUT' cargo_type = 'GEN' distance_km = 80 created_by = sy-uname created_on = lv_date )
  ( client = sy-mandt trip_id = 'T040' vehicle_id = 'V020' driver_id = '45434323' start_date = '20240302' end_date = '20240303'
    origin = 'CHENNAI' destination = 'TRICHY' cargo_type = 'FOOD' distance_km = 320 created_by = sy-uname created_on = lv_date )
).

    INSERT zaks_trip FROM TABLE @lt_trip.

    data(lv_next_service) = '20240111'.
    lt_maintenance = VALUE #(
      ( client = sy-mandt vehicle_id = 'V001' maint_id = 'M001' service_date = '20230105' service_type = 'OIL'   service_cost =  5000 currency = 'INR' workshop_name = 'AUTOCARE PUNE'
        odometer_reading = 12000 parts_changed = 'OIL'   warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000001' vendor_number = '0000100001' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V002' maint_id = 'M002' service_date = '20230210' service_type = 'TYRE'  service_cost = 12000 currency = 'INR' workshop_name = 'WHEELS N DEALS DELHI'
        odometer_reading = 23000 parts_changed = 'TYRE'  warranty_claim = 'Y' next_service_date = lv_next_service material_number = 'MAT000002' vendor_number = '0000100002' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V003' maint_id = 'M003' service_date = '20230320' service_type = 'ENG'   service_cost = 25000 currency = 'INR' workshop_name = 'ENGINE CARE MUMBAI'
        odometer_reading = 54000 parts_changed = 'ENG'   warranty_claim = 'Y' next_service_date = lv_next_service material_number = 'MAT000003' vendor_number = '0000100003' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V004' maint_id = 'M004' service_date = '20230411' service_type = 'BRAKE' service_cost =  8000 currency = 'INR' workshop_name = 'BRAKE POINT HYDERABAD'
        odometer_reading = 35000 parts_changed = 'BRAKE' warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000004' vendor_number = '0000100004' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V005' maint_id = 'M005' service_date = '20230515' service_type = 'BAT'   service_cost =  6000 currency = 'INR' workshop_name = 'POWER BATTERY KOLKATA'
        odometer_reading = 18500 parts_changed = 'BAT'   warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000005' vendor_number = '0000100005' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V006' maint_id = 'M006' service_date = '20230622' service_type = 'AC'    service_cost =  7000 currency = 'INR' workshop_name = 'COOL CARS CHENNAI'
        odometer_reading = 41000 parts_changed = 'AC'    warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000006' vendor_number = '0000100006' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V007' maint_id = 'M007' service_date = '20230705' service_type = 'TRANS' service_cost = 30000 currency = 'INR' workshop_name = 'TRANSMISSION HUB PUNE'
        odometer_reading =  9000 parts_changed = 'TRANS' warranty_claim = 'Y' next_service_date = lv_next_service material_number = 'MAT000007' vendor_number = '0000100007' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V008' maint_id = 'M008' service_date = '20230812' service_type = 'PAINT' service_cost = 15000 currency = 'INR' workshop_name = 'PAINT MY RIDE BANG'
        odometer_reading = 72000 parts_changed = 'PAINT' warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000008' vendor_number = '0000100008' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V009' maint_id = 'M009' service_date = '20230918' service_type = 'ELEC'  service_cost =  9000 currency = 'INR' workshop_name = 'ELECTRO AUTO MUMBAI'
        odometer_reading = 26000 parts_changed = 'ELEC'  warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000009' vendor_number = '0000100009' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V010' maint_id = 'M010' service_date = '20231005' service_type = 'GEN'   service_cost =  4500 currency = 'INR' workshop_name = 'UNIVERSAL MOTORS DELHI'
        odometer_reading = 88000 parts_changed = 'GEN'   warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000010' vendor_number = '0000100010' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V011' maint_id = 'M011' service_date = '20230125' service_type = 'OIL'   service_cost =  5200 currency = 'INR' workshop_name = 'OIL N CARE LUCKNOW'
        odometer_reading = 13200 parts_changed = 'OIL'   warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000011' vendor_number = '0000100011' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V012' maint_id = 'M012' service_date = '20230228' service_type = 'TYRE'  service_cost = 10000 currency = 'INR' workshop_name = 'TYRE HOUSE PUNE'
        odometer_reading = 64000 parts_changed = 'TYRE'  warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000012' vendor_number = '0000100012' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V013' maint_id = 'M013' service_date = '20230315' service_type = 'ENG'   service_cost = 28000 currency = 'INR' workshop_name = 'ENGINE PLUS DELHI'
        odometer_reading =  8400 parts_changed = 'ENG'   warranty_claim = 'Y' next_service_date = lv_next_service material_number = 'MAT000013' vendor_number = '0000100013' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V014' maint_id = 'M014' service_date = '20230419' service_type = 'BRAKE' service_cost =  7500 currency = 'INR' workshop_name = 'BRAKE MASTER KOLKATA'
        odometer_reading = 21500 parts_changed = 'BRAKE' warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000014' vendor_number = '0000100014' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V015' maint_id = 'M015' service_date = '20230523' service_type = 'BAT'   service_cost =  5800 currency = 'INR' workshop_name = 'BATTERY WORLD CHENNAI'
        odometer_reading = 17100 parts_changed = 'BAT'   warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000015' vendor_number = '0000100015' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V016' maint_id = 'M016' service_date = '20230630' service_type = 'AC'    service_cost =  7200 currency = 'INR' workshop_name = 'COOL DRIVE BANG'
        odometer_reading = 45500 parts_changed = 'AC'    warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000016' vendor_number = '0000100016' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V017' maint_id = 'M017' service_date = '20230725' service_type = 'TRANS' service_cost = 31000 currency = 'INR' workshop_name = 'TRANSCARE DELHI'
        odometer_reading = 99000 parts_changed = 'TRANS' warranty_claim = 'Y' next_service_date = lv_next_service material_number = 'MAT000017' vendor_number = '0000100017' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V018' maint_id = 'M018' service_date = '20230829' service_type = 'PAINT' service_cost = 16000 currency = 'INR' workshop_name = 'PAINT ZONE PUNE'
        odometer_reading = 10200 parts_changed = 'PAINT' warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000018' vendor_number = '0000100018' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V019' maint_id = 'M019' service_date = '20230914' service_type = 'ELEC'  service_cost =  8800 currency = 'INR' workshop_name = 'ELECTROFIX HYDERABAD'
        odometer_reading = 28700 parts_changed = 'ELEC'  warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000019' vendor_number = '0000100019' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V020' maint_id = 'M020' service_date = '20231021' service_type = 'GEN'   service_cost =  4700 currency = 'INR' workshop_name = 'GEN AUTOCARE MUMBAI'
        odometer_reading = 91000 parts_changed = 'GEN'   warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000020' vendor_number = '0000100020' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V001' maint_id = 'M021' service_date = '20231115' service_type = 'OIL'   service_cost =  5400 currency = 'INR' workshop_name = 'FAST OIL PUNE'
        odometer_reading = 13800 parts_changed = 'OIL'   warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000021' vendor_number = '0000100021' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V002' maint_id = 'M022' service_date = '20231202' service_type = 'TYRE'  service_cost = 11000 currency = 'INR' workshop_name = 'TYRE KING DELHI'
        odometer_reading = 25500 parts_changed = 'TYRE'  warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000022' vendor_number = '0000100022' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V003' maint_id = 'M023' service_date = '20231219' service_type = 'ENG'   service_cost = 24000 currency = 'INR' workshop_name = 'ENGINE WORKS PUNE'
        odometer_reading = 56500 parts_changed = 'ENG'   warranty_claim = 'Y' next_service_date = lv_next_service material_number = 'MAT000023' vendor_number = '0000100023' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V004' maint_id = 'M024' service_date = '20230109' service_type = 'BRAKE' service_cost =  8200 currency = 'INR' workshop_name = 'BRAKE ZONE DELHI'
        odometer_reading = 33000 parts_changed = 'BRAKE' warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000024' vendor_number = '0000100024' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V005' maint_id = 'M025' service_date = '20230211' service_type = 'BAT'   service_cost =  6100 currency = 'INR' workshop_name = 'BATCARE BANG'
        odometer_reading = 19100 parts_changed = 'BAT'   warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000025' vendor_number = '0000100025' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V006' maint_id = 'M026' service_date = '20230322' service_type = 'AC'    service_cost =  7400 currency = 'INR' workshop_name = 'AC POINT HYDERABAD'
        odometer_reading = 42800 parts_changed = 'AC'    warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000026' vendor_number = '0000100026' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V007' maint_id = 'M027' service_date = '20230410' service_type = 'TRANS' service_cost = 30500 currency = 'INR' workshop_name = 'TRANS HUB MUMBAI'
        odometer_reading = 10500 parts_changed = 'TRANS' warranty_claim = 'Y' next_service_date = lv_next_service material_number = 'MAT000027' vendor_number = '0000100027' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V008' maint_id = 'M028' service_date = '20230529' service_type = 'PAINT' service_cost = 14000 currency = 'INR' workshop_name = 'COLOR AUTO KOLKATA'
        odometer_reading = 74500 parts_changed = 'PAINT' warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000028' vendor_number = '0000100028' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V009' maint_id = 'M029' service_date = '20230614' service_type = 'ELEC'  service_cost =  9100 currency = 'INR' workshop_name = 'ELEC CARE PUNE'
        odometer_reading = 27500 parts_changed = 'ELEC'  warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000029' vendor_number = '0000100029' created_by = sy-uname created_on = lv_date )

      ( client = sy-mandt vehicle_id = 'V010' maint_id = 'M030' service_date = '20230703' service_type = 'GEN'   service_cost =  4900 currency = 'INR' workshop_name = 'UNIV MOTORS CHENNAI'
        odometer_reading = 89500 parts_changed = 'GEN'   warranty_claim = 'N' next_service_date = lv_next_service material_number = 'MAT000030' vendor_number = '0000100030' created_by = sy-uname created_on = lv_date )
    ).
INSERT zaks_maintenance FROM TABLE @lt_maintenance.



    out->write( 'Successful!' ).
  ENDMETHOD.

ENDCLASS.
