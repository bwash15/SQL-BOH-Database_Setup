drop table if exists address;

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