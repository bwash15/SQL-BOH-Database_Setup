# SQL-BOH-Database_Setup
A Restaurant's Back-of-the-House Relational Database Setup 

ERD - Relationships shown between:  
       > orders - guests : One-to-One
       > orders - recipe_ingredients : One-to-Many
       > recipe_ingredients - inventory_ingredients : Many-to-Many *
       > inventory_item_container - inventory_ingredients : One-to-One

MySQL Database

Datasets configured on Mockaroo  >  https://www.mockaroo.com

Tables Created: 
       > guests
       > guests_emails
       > email_type
       > address
       > address_type
       > orders
       > order_item
       > inventory
       > inventroy_item
       > inventory_item_container
       > recipe
       > ingredient
       > boh_associate
       > rotation
       > boh_shift

Dashboards created: 
> Dashboard 1: Order Activity
       >  Total Orders
       >  Total Sales
       >  Total inventory items consumed in order
       >  Avg Order Value
       >  Sales by Category
       >  Top Selling menu items
       >  Orders by the Hour
       >  Sales by the Hour
       >  Orders by Address
       >  Orders by Guest
       >  Orders by delivery / pick-up
