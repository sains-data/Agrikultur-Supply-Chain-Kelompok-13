# Raw Data Files Documentation

This directory contains the raw data files used in the Agriculture Supply Chain Data Warehouse project. Below is a detailed description of each file and its contents.

## Files Overview

### 1. transaksi_pertanian.csv
- **Description**: Contains agricultural transaction records
- **Format**: CSV (Comma Separated Values)
- **Key Fields**:
  - Transaction ID
  - Date
  - Product ID
  - Farmer ID
  - Quantity
  - Price per kg
  - Warehouse ID
  - Retail Partner ID
  - Shipment ID

### 2. profil_petani.xml
- **Description**: Farmer profiles and their farm information
- **Format**: XML
- **Key Fields**:
  - Farmer ID
  - Name
  - Location
  - Farm Size (hectares)
  - Contact Information
  - Farming Experience

### 3. sukamarga_logistik.xlsx
- **Description**: Logistics and shipment data
- **Format**: Excel Spreadsheet
- **Key Fields**:
  - Shipment ID
  - Origin
  - Destination
  - Distance (km)
  - Duration (minutes)
  - Delivery Status
  - Transportation Type

### 4. data_ritel.csv
- **Description**: Retail partner information
- **Format**: CSV
- **Key Fields**:
  - Retail Partner ID
  - Name
  - Type (e.g., Supermarket, Traditional Market, Restaurant)
  - Location
  - Business Scale

### 5. gudang_stok.csv
- **Description**: Warehouse and stock information
- **Format**: CSV
- **Key Fields**:
  - Warehouse ID
  - Location
  - Capacity (kg)
  - Current Stock Level
  - Storage Conditions

### 6. produksi.csv
- **Description**: Agricultural product information
- **Format**: CSV
- **Key Fields**:
  - Product ID
  - Product Name
  - Category
  - Shelf Life (days)
  - Storage Requirements

## Data Relationships
- `transaksi_pertanian.csv` serves as the main transaction table linking to other dimension tables
- Farmer profiles (`profil_petani.xml`) are linked through Farmer ID
- Logistics data (`sukamarga_logistik.xlsx`) is connected via Shipment ID
- Retail information (`data_ritel.csv`) is referenced by Retail Partner ID
- Warehouse data (`gudang_stok.csv`) is linked through Warehouse ID
- Product details (`produksi.csv`) are connected via Product ID

## File Formats and Encoding
- CSV files use UTF-8 encoding with comma (,) as delimiter
- XML file uses UTF-8 encoding
- Excel file is in XLSX format (Excel 2007+)

## Data Update Frequency
- Transaction data: Daily updates
- Farmer profiles: Monthly updates
- Logistics data: Real-time updates
- Retail partner data: Quarterly updates
- Warehouse stock: Daily updates
- Product information: Monthly updates
