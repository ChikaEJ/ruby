 SELECT * FROM (SELECT 
 products.category_id, 
    categories.category, 
    count(category_id) AS Amount,
    Sum(price) as 'Total price'
FROM 
 products INNER JOIN 
    categories ON products.category_id = categories.id 
    GROUP BY products.category_id, categories.category) AS A
    order by 'Total price' desc