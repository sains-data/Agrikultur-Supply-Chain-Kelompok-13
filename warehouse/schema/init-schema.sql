CREATE DATABASE agri;
GO

USE agri;
GO

'''Inisialisasi Tabel Dimensi'''
CREATE TABLE Dim_Time (
    time_id INT PRIMARY KEY,
    date DATE,
    month INT,
    kuarter INT,
    years INT
);

CREATE TABLE Dim_Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    shelf_life_days INT
);

CREATE TABLE Dim_Farmer (
    farmer_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    farm_size_ha FLOAT
);

CREATE TABLE Dim_StockWarehouse (
    warehouse_id INT PRIMARY KEY,
    location VARCHAR(20),
    capacity_kg FLOAT
);

CREATE TABLE Dim_RetailPartner (
    retail_partner_id INT PRIMARY KEY,
    name VARCHAR(100),
    type VARCHAR(50)
);

CREATE TABLE Dim_Logistics (
    shipment_id INT PRIMARY KEY,
    date DATE,
    origin INT,
    destination INT,
    distance_km FLOAT,
    duration_minutes INT,
    delivery_status VARCHAR(50)
);


'''Inisialisasi Tabel Fakta'''

CREATE TABLE Fact_Transaction (
    transaction_id INT PRIMARY KEY,
    time_id INT,
    product_id INT,
    farmer_id INT,
    warehouse_id INT,
    retail_partner_id INT,
    quantity_kg FLOAT,
    price_per_kg FLOAT,
    shipping_cost FLOAT,
    shipment_id INT,

    CONSTRAINT FK_Transaction_Time FOREIGN KEY (time_id) REFERENCES Dim_Time(time_id),
    CONSTRAINT FK_Transaction_Product FOREIGN KEY (product_id) REFERENCES Dim_Product(product_id),
    CONSTRAINT FK_Transaction_Farmer FOREIGN KEY (farmer_id) REFERENCES Dim_Farmer(farmer_id),
    CONSTRAINT FK_Transaction_Warehouse FOREIGN KEY (warehouse_id) REFERENCES Dim_StockWarehouse(warehouse_id),
    CONSTRAINT FK_Transaction_Retail FOREIGN KEY (retail_partner_id) REFERENCES Dim_RetailPartner(retail_partner_id),
    CONSTRAINT FK_Transaction_Shipment FOREIGN KEY (shipment_id) REFERENCES Dim_Logistics(shipment_id)
);
