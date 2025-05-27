'''
Rollup: Total shipping_cost per year dan per bulan (dari Dim_Time) dan total keseluruhan.
'''

SELECT 
    DT.years,
    DT.month,
    SUM(FT.shipping_cost) AS total_shipping_cost
FROM Fact_Transaction FT
JOIN Dim_Time DT ON FT.time_id = DT.time_id
GROUP BY 
    ROLLUP (DT.years, DT.month);

'''
Cube: total quantity berdasarkan kategori dan jenis partner.
'''

SELECT 
    DP.category,
    DRP.type,
    SUM(FT.quantity_kg) AS total_quantity
FROM Fact_Transaction FT
JOIN Dim_Product DP ON FT.product_id = DP.product_id
JOIN Dim_RetailPartner DRP ON FT.retail_partner_id = DRP.retail_partner_id
GROUP BY 
    CUBE (DP.category, DRP.type);


'''
Pivot: Rerata harga per kategori per kuartal (2025)
'''

SELECT *
FROM (
    SELECT 
        DP.category,
        DT.kuarter,
        FT.price_per_kg
    FROM Fact_Transaction FT
    JOIN Dim_Product DP ON FT.product_id = DP.product_id
    JOIN Dim_Time DT ON FT.time_id = DT.time_id
    WHERE DT.years = 2025
) AS SourceTable
PIVOT (
    AVG(price_per_kg)
    FOR kuarter IN ([1], [2], [3], [4])
) AS PivotTable;
