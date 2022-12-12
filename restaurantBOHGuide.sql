

CREATE TABLE `guests` (
    `guest_id` int  NOT NULL ,
    `guest_first_name` varchar(50)  NOT NULL ,
    `guest_last_name` varchar(50)  NOT NULL ,
    `guest_gender` varchar(10) NOT NULL,
    `guest_dob` varchar(10)  NOT NULL ,
    `guest_email_id` int  NOT NULL ,
    PRIMARY KEY (
        `guest_id`
    )
);

/*--------------------------------------------------- */

CREATE TABLE `guests_emails`(
    `guest_email_id` int NOT NULL ,
    `email_type_id` int NOT NULL,
    `email_address` varchar(250),
    PRIMARY KEY (
        `guest_email_id`
    ) 

);

CREATE TABLE `email_type`(
    `email_type_id` int NOT NULL ,
    `email_type` varchar(10),
    PRIMARY KEY (
        `email_type_id`
    ) 
);

/*--------------------------------------------------- */

CREATE TABLE `address` (
    `address_id` int  NOT NULL ,
    `street_number` varchar(200)  NOT NULL ,
    `street_name` varchar(200)  NOT NULL ,
    `street_suffix` varchar(100)  NOT NULL ,
    `city` varchar(100)  NOT NULL ,
    `state` varchar(100)  NOT NULL ,
    `zipcode` varchar(12)  NOT NULL ,
    `address_type_id` int NOT NULL ,
    PRIMARY KEY (
        `address_id`
    )
);

CREATE TABLE `address_type` (
    `address_type_id` int  NOT NULL ,
    `address_type` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `address_type_id`
    )
);

/*--------------------------------------------------- */

CREATE TABLE `orders` (
    `row_id` int  NOT NULL ,
    `order_id` int  NOT NULL ,
    `created_at` varchar(15) NOT NULL ,
    `delivery` boolean  NOT NULL ,
    `quantity` int  NOT NULL ,
    `guest_id` int  NOT NULL ,
    `address_id` int  NOT NULL ,
    `order_item_id` int  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);


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


/*--------------------------------------------------- */

CREATE TABLE `inventory` (
    `inventory_id` int  NOT NULL ,
    `inventory_item_id` varchar(10)  NOT NULL ,
    `quantity` int  NOT NULL ,
    PRIMARY KEY (
        `inventory_id`
    )
);

CREATE TABLE `inventory_item` (
    `inventory_item_id` int  NOT NULL ,
    `inventory_item_sku` varchar(20)  NOT NULL FOREIGN KEY `recipe`,
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

CREATE TABLE `inventory_item_container`(
    `inventory_item_container_id` int NOT NULL,
    `inventory_item_container_size` varchar(10)  NOT NULL ,
    `inventory_item_container_increment` varchar(10)  NOT NULL ,
    `inventory_item_cost_per_increment` decimal(10,2)  NOT NULL ,
    `inventory_item_container_price` decimal(10,2)  NOT NULL ,
    `inventory_item_container_par` decimal(10,2)  NOT NULL ,
    PRIMARY KEY (
        `inventory_item_container_id`
    )
);

/*--------------------------------------------------- */

CREATE TABLE `recipe` (
    `row_id` int  NOT NULL ,
    `recipe_id` varchar(20)  NOT NULL ,
    `ingred_id` varchar(10)  NOT NULL ,   
    `ingred_quantity` int  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);

CREATE TABLE `ingredient` (
    `ingred_id` int NOT NULL ,
    `ingred_name` varchar(200)  NOT NULL ,
    `ingred_weight` int  NOT NULL ,
    `ingred_measure` varchar(20)  NOT NULL ,
    `ingred_price` decimal(5,2)  NOT NULL ,
    PRIMARY KEY (
        `ingred_id`
    )
);

/*--------------------------------------------------- */

CREATE TABLE `boh_associate` (
    `boh_associate_id` varchar(20)  NOT NULL ,
    `first_name` varchar(50)  NOT NULL ,
    `last_name` varchar(50)  NOT NULL ,
    `position` varchar(100)  NOT NULL ,
    `overall_cook_rating` varchar(100)  NOT NULL ,
    `cook_shift_rating` varchar(100)  NOT NULL ,
    `hourly_rate` decimal(5,2)  NOT NULL ,
    PRIMARY KEY (
        `boh_associate_id`
    )
);

CREATE TABLE `rotation` (
    `row_id` int  NOT NULL ,
    `rota_id` varchar(20)  NOT NULL ,
    `date` datetime  NOT NULL ,
    `shift_id` varchar(20)  NOT NULL ,
    `boh_associate_id` varchar(20)  NOT NULL ,
    `num_associates_on_rota` int  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);

CREATE TABLE `boh_shift` (
    `boh_shift_id` varchar(20)  NOT NULL ,
    `day_of_week` varchar(20)  NOT NULL ,
    `start_time` time  NOT NULL ,
    `end_time` time  NOT NULL ,     
    PRIMARY KEY (
        `boh_shift_id`
    )
);

ALTER TABLE `guests` ADD CONSTRAINT `fk_guests_guest_id` FOREIGN KEY(`guest_id`)
REFERENCES `orders` (`guest_id`);

ALTER TABLE `address` ADD CONSTRAINT `fk_address_address_id` FOREIGN KEY(`address_id`)
REFERENCES `orders` (`address_id`);

ALTER TABLE `order_item` ADD CONSTRAINT `fk_order_item_order_item_id` FOREIGN KEY(`order_item_id`)
REFERENCES `orders` (`order_item_id`);

ALTER TABLE `ingredient` ADD CONSTRAINT `fk_ingredient_ingred_id` FOREIGN KEY(`ingred_id`)
REFERENCES `recipe` (`ingred_id`);

ALTER TABLE `recipe` ADD CONSTRAINT `fk_recipe_recipe_id` FOREIGN KEY(`recipe_id`)
REFERENCES `order_item` (`sku`);

ALTER TABLE `inventory` ADD CONSTRAINT `fk_inventory_item_id` FOREIGN KEY(`item_id`)
REFERENCES `recipe` (`ingred_id`);

ALTER TABLE `staff` ADD CONSTRAINT `fk_staff_staff_id` FOREIGN KEY(`staff_id`)
REFERENCES `rotation` (`staff_id`);

ALTER TABLE `rotation` ADD CONSTRAINT `fk_rotation_date` FOREIGN KEY(`date`)
REFERENCES `orders` (`created_at`);

ALTER TABLE `shift` ADD CONSTRAINT `fk_shift_shift_id` FOREIGN KEY(`shift_id`)
REFERENCES `rotation` (`shift_id`);

