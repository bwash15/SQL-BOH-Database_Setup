drop table if exists boh_associate_email;

CREATE TABLE `boh_associate_email`(
    `boh_associate_email_id` int NOT NULL ,
    `email_type_id` int NOT NULL ,
    `boh_associate_email_address` varchar(350),
    PRIMARY KEY (
        `boh_associate_email_id`
    ) 
);