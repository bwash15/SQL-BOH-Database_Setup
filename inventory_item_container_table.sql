drop table if exists inventory_item_container;

CREATE TABLE `inventory_item_container`(
    `inventory_item_container_id` int NOT NULL,
    `inventory_item_container_id_name` varchar(200) NOT NULL,
    `inventory_item_container_size` varchar(10)  NOT NULL ,
    `inventory_item_containers_measure` varchar(10)  NOT NULL ,
    `inventory_item_measure_per_container` decimal(10,2)  NOT NULL ,
    `inventory_item_container_price` decimal(10,2)  NOT NULL ,
    `inventory_item_container_par` decimal(10,2)  NOT NULL ,
    PRIMARY KEY (
        `inventory_item_container_id`
    )
);