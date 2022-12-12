drop table if exists order_item;

CREATE TABLE `order_item` (
    `order_item_id` int  NOT NULL ,
    `sku` varchar(20)  NOT NULL ,
    `order_item_name` varchar(100)  NOT NULL ,
    `order_item_category` varchar(100)  NOT NULL ,
    `order_item_size` varchar(10)  NOT NULL ,
    `order_item_price` decimal(10,2)  NOT NULL ,
    PRIMARY KEY (
        `order_item_id`
    )
);


