SELECT 
	customerName
FROM 
	customers c 
LEFT JOIN orders o ON 
	c.customerNumber = o.customerNumber 
LEFT JOIN  orderdetails od ON 
	o.orderNumber = od.orderNumber 
LEFT JOIN products p ON 
	od.productCode = p.productCode 
LEFT JOIN productlines pl ON 
	pl.productLine = pl.productLine 
WHERE 
	pl.productLine = 'Classic Cars'  AND od.quantityOrdered > 23
GROUP BY 
	customerName;