<img src="./banner.png" width="100%">

# Agriculture Supply Chain Data Warehouse
Industri agrikultur di Indonesia memiliki potensi besar untuk berkembang melalui penerapan teknologi digital. Salah satu pendekatan strategis yang sedang berkembang adalah pengembangan bisnis agrikultur berbasis platform digital, yang berupaya mengatasi permasalahan klasik seperti rantai distribusi yang panjang, keterbatasan akses pasar bagi petani, serta minimnya data terstruktur untuk mendukung pengambilan keputusan operasional dan strategis (Putri & Sembiring, 2022; Kementerian Pertanian RI, 2021).


# Supply Chain Concept

<img src="https://cdn.agclassroom.org/media/uploads/LP838/Food-Supply-Chain.png"/>


# ERD (Entity Relational Diagram)

<img src="./assets/erd.png" width="500"/>

# Database Name : Agri

# Dimensional Table

| Table Name           | Description                            | Key                 | Selected Columns                                                                      |
| -------------------- | -------------------------------------- | ------------------- | ------------------------------------------------------------------------------------- |
| `Dim_Time`           | Time dimension table                   | `time_id`           | `date`, `month`, `kuarter`, `years`                                                   |
| `Dim_Product`        | Product dimension table                | `product_id`        | `product_name`, `category`, `shelf_life_days`                                         |
| `Dim_Farmer`         | Farmer dimension table                 | `farmer_id`         | `name`, `location`, `farm_size_ha`                                                    |
| `Dim_StockWarehouse` | Warehouse dimension table              | `warehouse_id`      | `location`, `capacity_kg`                                                             |
| `Dim_RetailPartner`  | Retail partner (buyer) dimension table | `retail_partner_id` | `name`, `type`                                                                        |
| `Dim_Logistics`      | Shipment and logistics details         | `shipment_id`       | `date`, `origin`, `destination`, `distance_km`, `duration_minutes`, `delivery_status` |


# Fact Table
| Table Name         | Description                                   | Primary Key      | Foreign Keys                                                                                                                                                                                                       | Measures                                       |
| ------------------ | --------------------------------------------- | ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------- |
| `Fact_Transaction` | Core fact table for agricultural transactions | `transaction_id` | `time_id` → `Dim_Time`,<br>`product_id` → `Dim_Product`,<br>`farmer_id` → `Dim_Farmer`,<br>`warehouse_id` → `Dim_StockWarehouse`,<br>`retail_partner_id` → `Dim_RetailPartner`,<br>`shipment_id` → `Dim_Logistics` | `quantity_kg`, `price_per_kg`, `shipping_cost` |

# Installation and Setup Guide

## Prerequisites
1. Python 3.8 or higher
2. Microsoft SQL Server
3. SQL Server Management Studio (SSMS)
4. Jupyter Notebook

## Installation Steps

1. Install pip (Python Package Manager) if not already installed:
   ```bash
   # For Windows
   python -m ensurepip --default-pip
   # For Linux/Mac
   sudo apt-get install python3-pip  # Ubuntu/Debian
   brew install pip  # MacOS with Homebrew
   ```

2. Install required Python packages:
   ```bash
   pip install -r requirements.txt
   ```

3. Install SQL Server Driver:
   - Download and install Microsoft ODBC Driver for SQL Server from the official Microsoft website
   - For Windows, typically you can use "SQL Server" driver that comes pre-installed

## Execution Steps

1. Generate Raw Data:
   - Open and run `faker.ipynb` in Jupyter Notebook:
     ```bash
     jupyter notebook faker.ipynb
     ```
   - This will generate synthetic data for our supply chain database

2. Create Database Schema:
   - Open SQL Server Management Studio (SSMS)
   - Connect to your SQL Server instance
   - Open `init-schema.sql` and execute it to create the star schema structure
   - Alternatively, you can use the command line:
     ```bash
     sqlcmd -S your_server_name -d your_database -i init-schema.sql
     ```

3. Run ETL Process:
   - Open and run `etl.ipynb` in Jupyter Notebook:
     ```bash
     jupyter notebook etl.ipynb
     ```
   - This notebook will extract the generated data, transform it according to our schema, and load it into the database

4. Execute OLAP Analytics:
   - Open SQL Server Management Studio (SSMS)
   - Connect to your SQL Server instance
   - Open and execute `olap.sql`
   - Alternatively, you can use the command line:
     ```bash
     sqlcmd -S your_server_name -d your_database -i olap.sql
     ```

## Kelompok SupplyChain

Ketua Virdio Samuel Saragih - 122450124

| Nama | NIM |
|------|-----|
| Josua Alfa Viando Panggabean | 121450061 |
| Try Yani Rizki Nur Rohmah | 122450020 |
| Priska Silvia Ferantiana | 122450053 |
| Dearni Monica Br Manik | 122450075 |
| Ferdy Kevin Naibaho | 122450107 |