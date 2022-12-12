drop table if exists address_type;

CREATE TABLE `address_type` (
    `address_type_id` int  NOT NULL ,
    `address_type` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `address_type_id`
    )
);