drop table if exists inventory;

CREATE TABLE `inventory` (
    `inventory_id` int  NOT NULL ,
    `inventory_item_id` int  NOT NULL ,
    `quantity` int  NOT NULL ,
    PRIMARY KEY (
        `inventory_id`
    )
);