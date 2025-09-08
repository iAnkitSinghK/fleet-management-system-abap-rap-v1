# 🚚 Fleet Management System (ABAP RAP Version 1)

The **Fleet Management System** is a comprehensive full-stack application built with the **ABAP RESTful Application Programming Model (RAP)**. It empowers organizations to efficiently manage their fleet of vehicles, trips, and maintenance activities using a modern, Fiori-based user experience.  
This solution follows RAP's **Managed Scenario** to ensure maintainability, reusability, and clean, scalable architecture.

---

## 📌 Key Features

- **Vehicle Master Data**: Manage vehicles with details like type, fuel, brand, model, price, and operational status.  
- **Trip Management**: Track trips, including distance, origin/destination, cargo type, and cost calculations.  
- **Maintenance Scheduling**: Schedule and log service history, including costs, parts, and next service dates.  
- **Automated Trip Cost Calculation**: Calculates trip costs dynamically based on fuel type and distance.  
- **Intuitive Fiori Elements UI**: Ready-to-use UI with facets, line items, selection fields, and rich header info.  
- **OData Service Exposure**: Seamless integration for frontend apps and external consumers.

---

## 🏗️ Technical Architecture

### 📂 Custom Database Tables

- **`ZAKS_VEHICLE`** — Vehicle master data (e.g., vehicle ID, type, fuel, brand, model, price, status)  
- **`ZAKS_TRIP`** — Trip details (e.g., trip ID, vehicle/driver IDs, origin, destination, distance, cargo type)  
- **`ZAKS_MAINTENANCE`** — Maintenance (e.g., maintenance ID, vehicle ID, service date/type, workshop, cost, parts, next service, vendor)  

**Data Initializer:**  
- **`ZAKS_FM_FILL`** — ABAP class to prefill sample data across all tables

---

### 📊 CDS Views

- **`ZAKS_CMP_CDS_TRIP`** — Computes **trip price** dynamically (based on fuel cost matrix: Petrol = 100, Diesel = 90, CNG = 70, Electric = 10)  
- **Interface Views:**  
  - **`ZAKS_I_ROOT_VEHICLE`** — Root view on vehicle table  
  - **`ZAKS_I_CDS_TRIP`** — Interface on computed trip CDS  
  - **`ZAKS_I_CDS_MAINTENANCE`** — Interface on maintenance table  
- **Modeling Highlights:**  
  - **Composition/Cardinality**: Root view composes trips and maintenance  
  - **Associations**: Trips and maintenance reference their parent vehicle

---

### ⚙️ Behavior Definitions

- **`ZAKS_I_ROOT_VEHICLE`** — Behavior definition for managed scenario  
  - Maps entities and compositions between vehicle, trip, and maintenance

---

### 📐 Projection Layer

- **Projection Views:**  
  - **`ZAKS_P_ROOT_VEHICLE`** — Projects root vehicle view  
  - **`ZAKS_P_CDS_TRIP`** — Projects trip view  
  - **`ZAKS_P_CDS_MAINTENANCE`** — Projects maintenance view  
- **Compositions & Redirections:**  
  - Root projection uses **redirected to composition**  
  - Trip and maintenance projections use **redirected to parent**  
- **Behavior Projection:**  
  - **`ZAKS_P_ROOT_VEHICLE`** — Behavior projection for root projection view

---

### 🎨 UI Annotations (Metadata Extensions)

- **`ZAKS_ME_VEHICLE`** — On root vehicle projection  
  - Header info, facets (Vehicle, Trip, Maintenance), line items, identification, selection fields, labels, and hidden fields  
- **`ZAKS_ME_TRIP`** — On trip projection  
  - Header info, facets, line items, identification, labels  
- **`ZAKS_ME_MAINTENANCE`** — On maintenance projection  
  - Header info, facets, line items, identification, labels

---

### 🌐 Service Layer

- **Service Definition:**  
  - **`ZAKS_SD_FLEET_MGMT`**  
    - Exposes:  
      - **Fleet** — `ZAKS_P_ROOT_VEHICLE`  
      - **Trip** — `ZAKS_P_CDS_TRIP`  
      - **Maintenance** — `ZAKS_P_CDS_MAINTENANCE`  
- **Service Binding:**  
  - **`ZAKS_SB_FLEET_MGMT`** — Binds service definition to **OData V2** for UI and external access

---

## 🖥️ Demo & Screenshots

Below are sample screenshots showcasing the Fleet Management System's Fiori UI and features:

### 🚛 Fleet Preview (Vehicle + Trip + Maintenance)

**Vehicle List**

![Vehicle List UI](src/assets/fleet_vehicle_list.png)

**Vehicle Details**

![Vehicle Details UI](src/assets/fleet_vehicle_details.png)

**Trip & Maintenance Overview (Facets)**

![Trip & Maintenance List](src/assets/fleet_trip_maintenance_list.png)

**Fleet Trip Details**

![Fleet Trip Details](src/assets/fleet_trip_details.png)

**Fleet Maintenance Details**

![Fleet Maintenance Details](src/assets/fleet_maintenance_details.png)

---

### 📋 Standalone Trip Management

**Trip List**

![Trip List UI](src/assets/trip_list.png)

**Trip Details**

![Trip Details UI](src/assets/trip_details.png)

---

### 🛠️ Standalone Maintenance Management

**Maintenance List**

![Maintenance List UI](src/assets/maintenance_list.png)

**Maintenance Details**

![Maintenance Details UI](src/assets/maintenance_details.png)

---

*All screenshots are from the Fiori Elements app demonstrating master-detail navigation, list reports, and object pages for real-world fleet operations.*


## 📂 Repository Structure

```plaintext
fleet-management-system-rap-version1/
│── src/
│ ├── tables/
│ │ ├── zaks_vehicle # Vehicle master data table
│ │ ├── zaks_trip # Trip details table
│ │ └── zaks_maintenance # Maintenance details table
│ │
│ ├── classes/
│ │ └── zaks_fm_fill # Class to fill initial data into tables
│ │
│ ├── cds/
│ │ ├── zaks_cmp_cds_trip # CDS View (trip cost calculation)
│ │ ├── zaks_i_root_vehicle # Root interface view on vehicle
│ │ ├── zaks_i_cds_trip # Interface view on trip CDS
│ │ └── zaks_i_cds_maintenance # Interface view on maintenance
│ │
│ ├── behavior/
│ │ └── zaks_i_root_vehicle # Behavior definition (Managed Scenario)
│ │
│ ├── projections/
│ │ ├── zaks_p_root_vehicle # Projection view on root
│ │ ├── zaks_p_cds_trip # Projection view on trip
│ │ └── zaks_p_cds_maintenance # Projection view on maintenance
│ │
│ ├── behavior_projections/
│ │ └── zaks_p_root_vehicle # Behavior projection on root projection
│ │
│ ├── ui/
│ │ ├── zaks_me_vehicle # Metadata extension for vehicle UI
│ │ ├── zaks_me_trip # Metadata extension for trip UI
│ │ └── zaks_me_maintenance # Metadata extension for maintenance UI
│ │
│ ├── service/
│ │ ├── zaks_sd_fleet_mgmt # Service definition (Fleet, Trip, Maintenance)
│ │ └── zaks_sb_fleet_mgmt # Service binding (OData V2)
│ │
│ └── assets/ # Screenshots & demo images
│ 
│
│── LICENSE # MIT License
└── README.md
```

---

## ⚡ Planned Enhancements

- RAP **Unmanaged Scenario** implementation  
- Role-based authorization and access control  
- Advanced KPIs and analytics dashboards

---

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
