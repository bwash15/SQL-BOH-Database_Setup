SELECT
o.order_id,
i.order_item_price,
o.quantity,
i.order_item_category,
i.order_item_name,
o.created_at,
a.street_number,
a.street_name,
a.street_suffix,
a.state,
a.city,
a.zipcode,
o.delivery
FROM orders o
LEFT JOIN order_item i on o.order_item_id = i.order_item_id
LEFT JOIN address a on o.address_id = a.address_id
;