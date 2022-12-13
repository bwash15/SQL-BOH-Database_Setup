drop table if exists inventory_item;

CREATE TABLE `inventory_item` (
    `inventory_item_id` int  NOT NULL ,
    `inventory_item_sku` varchar(20)  NOT NULL ,
    `inventory_item_name` varchar(100)  NOT NULL ,
    `inventory_item_menu_category` varchar(100)  NOT NULL ,
    `inventory_item_size` varchar(10)  NOT NULL ,
    `inventory_item_price` decimal(10,2)  NOT NULL ,
    `inventory_item_par` decimal(10,2)  NOT NULL ,
    `inventory_item_container_id` int NOT NULL ,
    PRIMARY KEY (
        `inventory_item_id`
    )
);