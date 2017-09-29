select 
	actions.action_date,
    categories.category,
    products.product,
    brands.brand,
    actions.qty,
	actions.price
    from
		actions inner join
			products on products.id = actions.product_id inner join brands ON products.brand_id=brands.id inner join categories on category_id = categories.id
    order by action_date desc;