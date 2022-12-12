drop table if exists email_type;

CREATE TABLE `email_type`(
    `email_type_id` int NOT NULL ,
    `email_type` varchar(10),
    PRIMARY KEY (
        `email_type_id`
    ) 
);