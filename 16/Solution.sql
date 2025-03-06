SELECT 
    P.product_id,
    ROUND(ISNULL(SUM(P.price * U.units) * 1.0 / NULLIF(SUM(U.units), 0), 2) AS average_price
FROM 
    Prices P
LEFT JOIN 
    UnitsSold U
ON 
    P.product_id = U.product_id 
    AND U.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY 
    P.product_id;