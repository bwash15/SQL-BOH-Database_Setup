SELECT
s1.order_item_name,
s1.recipe_ingred_id,
s1.recipe_ingred_name,
s1.ingred_weight_per_recipe,
s1.recipe_price_by_measure,
s1.order_quantity,
s1.recipe_quantity,
s1.order_quantity*s1.recipe_quantity AS ordered_weight,
s1.recipe_price_by_measure/s1.ingred_weight_per_recipe AS unit_cost,
(s1.order_quantity*s1.recipe_quantity)*(s1.recipe_price_by_measure/s1.ingred_weight_per_recipe) AS cost_of_ingredients_in_recipe
FROM (SELECT
	o.order_item_id,
	i.sku,
	i.order_item_name,
    r.recipe_ingred_id,
    ing.recipe_ingred_name,
    r.recipe_ingred_quantity AS recipe_quantity,
	sum(o.quantity) AS order_quantity,
    ing.ingred_weight_per_recipe,
    ing.recipe_price_by_measure    
FROM 
	orders o
		LEFT JOIN order_item i ON o.order_item_id = i.order_item_id
		LEFT JOIN recipe r ON i.sku = r.recipe_id
        LEFT JOIN recipe_ingredient ing ON ing.recipe_ingred_id = r.recipe_ingred_id
	GROUP BY 
		o.order_item_id,
		i.sku,
		i.order_item_name,
		r.recipe_ingred_id,
		r.recipe_ingred_quantity,
        ing.recipe_ingred_name,
        ing.ingred_weight_per_recipe,
        ing.recipe_price_by_measure
) s1
